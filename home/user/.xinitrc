if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

xset s 1800 &

# Correct pointer speed
xset m 0 0 &

# Sets X11's _ICC_PROFILEs
argyll-dispwin -I -d1 ~/.local/share/DisplayCAL/storage/U2715H\ #2\ 2018-01-26\ 00-19\ 120cdm²\ D6500\ 0.0001cdm²\ 2.2\ S\ XYZLUT+MTX/U2715H\ #2\ 2018-01-26\ 00-19\ 120cdm²\ D6500\ 0.0001cdm²\ 2.2\ S\ XYZLUT+MTX.icc &
argyll-dispwin -I -d2 ~/.local/share/DisplayCAL/storage/U2412M\ #1\ 2017-12-29\ 22-58\ 120cdm²\ D6500\ 0.0001cdm²\ 2.2\ S\ XYZLUT+MTX/U2412M\ #1\ 2017-12-29\ 22-58\ 120cdm²\ D6500\ 0.0001cdm²\ 2.2\ S\ XYZLUT+MTX.icc &

exec startkde
