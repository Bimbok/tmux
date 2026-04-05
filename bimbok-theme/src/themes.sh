#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @gruvbox-tmux_theme 2>/dev/null || echo "hard")"
TRANSPARENT_THEME="$(tmux show-option -gv @gruvbox-tmux_transparent 2>/dev/null || echo 0)"

MATUGEN_CACHE="$HOME/.cache/matugen-tmux-colors.sh"

# 1. Source the dynamically generated colors
if [[ -f "$MATUGEN_CACHE" ]]; then
  source "$MATUGEN_CACHE"
else
  # Fallback if Matugen hasn't generated the file yet
  declare -A MATUGEN_COLORS=([background]="#282828" [foreground]="#ebdbb2")
fi

# 2. Map Matugen colors to the THEME array the plugin expects
declare -A THEME
for key in background foreground black blue aqua green purple red white yellow \
  bblack bblue baqua bgreen bpurple bred bwhite byellow; do

  # Use the Matugen color, fallback to a default pink if mapping fails
  THEME["$key"]="${MATUGEN_COLORS[$key]:-#ff00ff}"
done

# 3. Preserve the plugin's transparency and Github widget logic
if [[ "${TRANSPARENT_THEME}" == "1" ]]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="${MATUGEN_COLORS[green]:-#b8bb26}"
THEME['ghpurple']="${MATUGEN_COLORS[purple]:-#d3869b}"
THEME['ghred']="${MATUGEN_COLORS[red]:-#fb4934}"
THEME['ghyellow']="${MATUGEN_COLORS[yellow]:-#fabd2f}"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
