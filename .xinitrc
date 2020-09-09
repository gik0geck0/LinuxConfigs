
# setxkbmap dvorak -option caps:escape
xrdb ~/.Xresources
xset -dpms s off
pulseaudio --start

# Try to launch xboxdrv
~/repos/xboxdrv_util/razer_sabertooth.sh &

exec $1
