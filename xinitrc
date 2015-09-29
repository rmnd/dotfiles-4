#!/bin/sh
#
# ~/.xinitrc

cd

setxkbmap se 

xrdb ~/.Xresources

~/.fehbg

compton &

redshift -t 6500:5000 &

sxhkd -f 60 -c ~/.sxhkdrc &

bspwm -c ~/.bspwmrc
