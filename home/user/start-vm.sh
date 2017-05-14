#!/bin/sh
set -euo pipefail

PS4_CONTROLLER=$(lsusb | grep 'Sony Corp')
hostbus=$(echo ${PS4_CONTROLLER} | awk '{ print $2 }' | cut -b3)
hostaddr=$(echo ${PS4_CONTROLLER} | awk '{ print $4 }' | cut -b3)

export QEMU_AUDIO_DRV="alsa"
eval qemu-system-x86_64 \
    -serial none \
    -parallel none \
    -enable-kvm \
    -name Windows \
    -bios /usr/share/edk2-ovmf/OVMF.fd \
    -m 16384 \
    -cpu host,kvm=off,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,hv_vendor_id=12CHARID \
    -smp 12,sockets=1,cores=6,threads=2 \
    -drive file=/home/user/win-qemu.img,id=disk,format=raw,if=none -device ide-hd,drive=disk \
    -device secondary-vga \
    -device vfio-pci,host=01:00.0,addr=09.0,multifunction=on \
    -device vfio-pci,host=01:00.1 \
    -rtc base=localtime \
    -soundhw ac97 \
    -vga none \
    -usb \
    -device usb-host,hostbus=${hostbus},hostaddr=${hostaddr}
