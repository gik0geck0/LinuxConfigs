import Data.Monoid
import System.Exit

import XMonad
import XMonad.Util.Run

main = do
	dzen2 <- spawnPipe myStatusBar
	xmonad $ defaultConfig
		{
			terminal	= "terminology"
		}

myStatusBar = "time | dzen2 -x '0' -y '0' -h '16' -ta 'l'"
