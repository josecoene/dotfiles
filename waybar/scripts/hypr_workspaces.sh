#!/usr/bin/env bash

MONITOR="${WAYBAR_OUTPUT:-$(hyprctl monitors -j | jq -r '.[0].name')}"

# Map workspaces to Roman numerals
declare -A workspace_map=( [1]="1" [2]="2" [3]="3" [4]="4" [5]="5" [6]="6" [7]="7" [8]="8" [9]="9")

# Get currently active workspace
FOCUSED_WS=$(hyprctl activeworkspace -j | jq -r '.id')

# All workspace numbers you want displayed
WS_LIST=(1 2 3 4 5 6 7 8 9 0)

for ws in "${WS_LIST[@]}"; do
    roman=${workspace_map[$ws]}
    if [ "$ws" == "$FOCUSED_WS" ]; then
        printf "%s\u0332 " "$roman"
    else
        printf "%s " "$roman"
    fi
done

echo

