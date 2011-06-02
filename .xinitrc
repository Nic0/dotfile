#!/bin/bash

setxkbmap fr bepo
setxkbmap -option ctrl:swapcaps
setxkbmap -option ctrl:nocaps
eval `feh --bg-scale ~/media/images/paperwall/paperwall.jpg` &
exec awesome
#exec wmfs
