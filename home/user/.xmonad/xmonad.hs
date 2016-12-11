import System.IO (hPutStrLn)

import XMonad

import XMonad.Config.Desktop

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

import XMonad.Layout.Fullscreen (fullscreenEventHook)
import XMonad.Layout.NoBorders (smartBorders)

import XMonad.Util.EZConfig
import XMonad.Util.Run (spawnPipe)

main = do
    xmproc <- spawnPipe "exec xmobar"
    xmonad $ desktopConfig {
        terminal        = "urxvtc",
        manageHook      = manageDocks <+> manageHook desktopConfig,
        layoutHook      = smartBorders $ avoidStruts $ layoutHook desktopConfig,
        handleEventHook = fullscreenEventHook <+> docksEventHook,
        logHook         = dynamicLogWithPP xmobarPP {
            ppOutput  = hPutStrLn xmproc,
            ppTitle   = xmobarColor "white" "",
            ppCurrent = xmobarColor "#85c600" ""
        }
    } `additionalKeys` extraKeys

extraKeys =
    [((mod1Mask .|. controlMask , xK_l), spawn "/usr/bin/slock"),
     ((0                        , 0x1008FF11), spawn "amixer set Master 2-"),
     ((0                        , 0x1008FF13), spawn "amixer set Master 2+"),
     ((0                        , 0x1008FF12), spawn "amixer set Master toggle")]
