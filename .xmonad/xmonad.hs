import Data.Monoid
import System.Exit

import qualified Data.Map as M
import qualified XMonad.StackSet as W

import XMonad

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName

import XMonad.Layout.NoBorders
import XMonad.Layout.MosaicAlt
import XMonad.Layout.Tabbed

import XMonad.Util.Run

layoutDefault = mosaicLayout ||| fullLayout

----------------------
----Customized Layouts--
------------------------
fullLayout = noBorders Full
tiledLayout = Tall 1 (1/50) (1/2)
mosaicLayout = MosaicAlt M.empty
--tabbedLayout = tabbed shrinkText defaultTheme
--comboTabed = combineTwo tiledLayout tabbedLayout tabbedLayout



main = do
    xmbpipe <- spawnPipe "xmobar ~/.xmonad/xmobarrc"
    xmonad $ defaultConfig {
              terminal    = "urxvt"
            , modMask = modKey
            , layoutHook = avoidStruts $ smartBorders $ layoutDefault
            , keys = myKeys
            , startupHook = myStartupHook
            , logHook = dynamicLogWithPP $ xmLogHook xmbpipe
        }

myKeys :: XConfig Layout -> M.Map (KeyMask, KeySym) (X ())
myKeys conf = M.union (M.fromList [
                  ((modKey, xK_l), (spawn "i3lock -i /home/gik0geck0/Pictures/blake-stars.png" >> trace "SPAWNING I3LOCK"))
                , ((modKey , xK_b ), sendMessage ToggleStruts ) -- Hide Status Bars
                ])
              (keys (defaultConfig {modMask = modKey}) conf )

myStartupHook :: X()
myStartupHook = do
    setWMName "LG3D"

modKey = mod4Mask

xmLogHook pipe = xmobarPP
    {
          ppOutput      = hPutStrLn pipe
        , ppCurrent     = xmobarColor "green" ""
        , ppTitle       = xmobarColor "green" "" . shorten 100
    }
