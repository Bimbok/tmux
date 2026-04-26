#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @gruvbox-tmux_theme 2>/dev/null || echo "medium")"
TRANSPARENT_THEME="$(tmux show-option -gv @gruvbox-tmux_transparent 2>/dev/null || echo 0)"

# Gruvbox Dark Colors
case "$SELECTED_THEME" in
  "hard")
    BG0="#1d2021"
    ;;
  "soft")
    BG0="#32302f"
    ;;
  *)
    BG0="#282828"
    ;;
esac

BG1="#3c3836"
BG2="#504945"
BG3="#665c54"
BG4="#7c6f64"
FG0="#fbf1c7"
FG1="#ebdbb2"
FG2="#d5c4a1"
FG3="#bdae93"
FG4="#a89984"

RED="#cc241d"
GREEN="#98971a"
YELLOW="#d79921"
BLUE="#458588"
PURPLE="#b16286"
AQUA="#689d6a"
ORANGE="#d65d0e"
GRAY="#928374"

RED_BRIGHT="#fb4934"
GREEN_BRIGHT="#b8bb26"
YELLOW_BRIGHT="#fabd2f"
BLUE_BRIGHT="#83a598"
PURPLE_BRIGHT="#d3869b"
AQUA_BRIGHT="#8ec07c"
ORANGE_BRIGHT="#fe8019"

declare -A THEME

THEME["background"]="$BG0"
THEME["foreground"]="$FG1"
THEME["black"]="$BG0"
THEME["blue"]="$BLUE"
THEME["aqua"]="$AQUA"
THEME["green"]="$GREEN"
THEME["purple"]="$PURPLE"
THEME["magenta"]="$PURPLE" # Added for compatibility
THEME["red"]="$RED"
THEME["white"]="$FG4"
THEME["yellow"]="$YELLOW"
THEME["bblack"]="$GRAY"
THEME["bblue"]="$BLUE_BRIGHT"
THEME["baqua"]="$AQUA_BRIGHT"
THEME["bgreen"]="$GREEN_BRIGHT"
THEME["bpurple"]="$PURPLE_BRIGHT"
THEME["bred"]="$RED_BRIGHT"
THEME["bwhite"]="$FG1"
THEME["byellow"]="$YELLOW_BRIGHT"

# Github status colors
THEME['ghgreen']="$GREEN_BRIGHT"
THEME['ghpurple']="$PURPLE_BRIGHT"
THEME['ghred']="$RED_BRIGHT"
THEME['ghyellow']="$YELLOW_BRIGHT"

if [[ "${TRANSPARENT_THEME}" == "1" ]]; then
  THEME["background"]="default"
fi

# Icons
terminal_icon=""
active_terminal_icon=""

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
