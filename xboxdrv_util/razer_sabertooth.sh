
isrunning=$(ps aux | grep -v grep | grep "xboxdrv --device-by-id 24c6")
if [ -z "$isrunning" ]; then
    xboxdrv --device-by-id 24c6:5d04 --type xbox360 --dpad-as-button --deadzone 1200
fi
