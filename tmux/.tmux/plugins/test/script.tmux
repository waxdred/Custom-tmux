#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

track="#($CURRENT_DIR/scripts/track.sh)"

track="\#{track}"
track_interpolation="\#{track}"
spotify_track=track
spotify_track_interpolation=track_interpolation

do_interpolation() {
  local output="$1"
  local output="${output/$track_interpolation/$track}"
  echo "$output"
}

update_tmux_uptime() {
  local option="$1"
  local option_value="$(get_tmux_option "$option")"
  local new_option_value="$(do_interpolation "$option_value")"
  set_tmux_option "$option" "$new_option_value"
}

main() {
  update_tmux_uptime "status-right"
  update_tmux_uptime "status-left"
}
main

