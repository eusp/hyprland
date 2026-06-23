#!/bin/bash

source="$HOME/.config/hypr/conf/colors.conf"

backgroundmp4=$(grep -oP '^\$backgroundmp4\s*=\s*\K.*' "$source")

pkill mpvpaper

sleep 0.5

mpvpaper -o "no-audio loop --panscan=0.65 --video-align-y=1" "*" "$backgroundmp4" &