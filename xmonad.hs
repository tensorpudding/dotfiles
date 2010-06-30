-- 
-- | XMonad configuration file
--

import XMonad
import qualified XMonad.StackSet as W

main :: IO ()
main = xmonad myconfig

myconfig = defaultConfig {
           workspaces = ["code","web","scratch"]
         , terminal = "urxvtc"
         , modMask = mod4Mask
         , manageHook = composeAll
                        [ className =? "Chromium" --> doF (W.shift "web")
                        , className =? "Emacs"    --> doF (W.shift "code")
                        ]
         }
