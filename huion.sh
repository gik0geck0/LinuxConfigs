
# Preferred button mapping for Huion H460p
# Use DIGImend drivers (https://digimend.github.io/)
# Run this script after X init, or on login
xsetwacom set "HID 256c:006d Pad pad" button 1 key Ctrl z
xsetwacom set "HID 256c:006d Pad pad" button 2 key Ctrl c
xsetwacom set "HID 256c:006d Pad pad" button 3 key Ctrl v
xsetwacom set "HID 256c:006d Pad pad" button 8 key Ctrl +
xsetwacom set "HID 256c:006d Pad pad" button 9 key Ctrl -
xsetwacom set "HID 256c:006d Pad pad" button 10 key Ctrl s

# https://askubuntu.com/questions/839161/limit-a-graphics-tablet-to-one-monitor
ID_STYLUS=`xinput | grep "stylus" | cut -f 2 | cut -c 4-5`
xinput map-to-output $ID_STYLUS 'DP-0'
