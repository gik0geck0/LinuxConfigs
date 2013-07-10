import Data.Monoid
import System.Exit

import qualified Data.Map as M
import qualified XMonad.StackSet as W

import XMonad

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageHelpers

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



main = xmonad  =<< xmobar defaultConfig {
			terminal	= "urxvt",
			layoutHook = smartBorders $ layoutDefault
		}

