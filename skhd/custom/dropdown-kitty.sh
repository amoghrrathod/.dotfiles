#!/bin/bash

APP_NAME="KittyDropdown"
KITTY_PATH="/Applications/kitty.app/Contents/MacOS/kitty"

# check if already running
win_id=$(yabai -m query --windows | jq -r ".[] | select(.app == \"kitty\" and .title == \"$APP_NAME\") | .id")

if [[ -n "$win_id" ]]; then
  yabai -m window "$win_id" --close
  exit
fi

# spawn new instance
"$KITTY_PATH" --title "$APP_NAME" --detach &

# wait until window is visible
for _ in {1..20}; do
  sleep 0.1
  win_id=$(yabai -m query --windows | jq -r ".[] | select(.app == \"kitty\" and .title == \"$APP_NAME\") | .id")
  [ -n "$win_id" ] && break
done

# position it
if [[ -n "$win_id" ]]; then
  yabai -m window "$win_id" --move abs:0:40
  yabai -m window "$win_id" --focus
else
  echo "Dropdown Kitty window not found :("
  exit 1
fi
