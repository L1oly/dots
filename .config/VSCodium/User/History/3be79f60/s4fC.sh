#!/usr/bin/env bash
set -e

WORKSPACE="/tmp/waywallen_matugen"
mkdir -p "$WORKSPACE"
rm -f "$WORKSPACE/raw.mp4"

echo "🔍 Fetching geometry bounds for Waywallen layer shell..."

# 1. Dynamically target the background wallpaper layer geometry
# This tracks down the exact pixel bounds of your background layer surface
if command -v slurp &> /dev/null && command -v swaymsg &> /dev/null; then
    GEOM=$(swaymsg -t get_tree | jq -r '.. | select(.name? == "waywallen") | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | head -n 1)
elif command -v slurp &> /dev/null && command -v hyprctl &> /dev/null; then
    # Hyprland specific extraction layer parsing
    GEOM=$(hyprctl layers | grep -A 3 "namespace: waywallen" | grep -oE "x: [0-9]+, y: [0-9]+, width: [0-9]+, height: [0-9]+" | sed 's/x: //;s/y: //;s/width: //;s/height: //' | awk -F', ' '{print $1","$2" "$3"x"$4}')
fi

# Fallback profile: If your WM layers cannot be queried directly, extract only the structural screen layout size 
if [ -z "$GEOM" ] && command -v slurp &> /dev/null; then
    echo "⚠️ Could not match direct namespace, isolating output region dimensions..."
    GEOM=$(slurp -b 00000000 -c 00000000 -p -o)
fi

echo "🎨 Recording isolated target geometry: $GEOM"

# 2. Record only that precise region, muting audio recording loops (-g flag forces background isolate layout)
if [ -n "$GEOM" ]; then
    wf-recorder -y -g "$GEOM" -f "$WORKSPACE/raw.mp4" &
else
    # Ultimate failsafe 
    wf-recorder -y -f "$WORKSPACE/raw.mp4" &
fi
REC_PID=$!

sleep 1.2
kill -SIGINT $REC_PID
wait $REC_PID 2>/dev/null

echo "🎬 Encoding 1-second background GIF..."
ffmpeg -y -i "$WORKSPACE/raw.mp4" \
  -vf "fps=15,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
  "$WORKSPACE/render_output.gif"

echo "⚙️ Pinging Matugen (Non-Interactive Mode)..."

# 3. Process image cleanly without spawning interactive terminal arrow selections
# Uses '--no-menu' to automatically select the most dominant wallpaper color accent
matugen image "$WORKSPACE/render_output.gif" --no-menu

rm -rf "$WORKSPACE"
echo "✨ Color scheme updated completely!"
