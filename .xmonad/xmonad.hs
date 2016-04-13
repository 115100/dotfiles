import XMonad
import XMonad.Config.Desktop
import XMonad.Util.EZConfig

main = do
    xmonad $ desktopConfig {
        terminal = "urxvtc"
    } `additionalKeys` extraKeys

extraKeys =
    [((mod1Mask .|. controlMask , xK_l), spawn "/usr/bin/slock")]
