#!/bin/zsh

set -euo pipefail

shortcut_name="${LEARNING_WALLPAPER_SHORTCUT_NAME:-Save to Photos}"

if (( $# != 1 )); then
  print -u2 "Usage: $0 path/to/accepted-wallpaper.png"
  exit 2
fi

image_path="$1"

if [[ ! -f "$image_path" ]]; then
  print -u2 "Error: image not found: $image_path"
  exit 1
fi

if [[ "${image_path:e:l}" != "png" ]]; then
  print -u2 "Error: expected a PNG wallpaper: $image_path"
  exit 1
fi

if ! command -v shortcuts >/dev/null 2>&1; then
  print -u2 "Error: macOS 'shortcuts' command is not available."
  exit 1
fi

if ! shortcuts list | grep -Fqx "$shortcut_name"; then
  print -u2 "Error: Shortcut not found: $shortcut_name"
  print -u2 "Set LEARNING_WALLPAPER_SHORTCUT_NAME if your Shortcut has a different name."
  exit 1
fi

print "Publishing $image_path with Shortcut '$shortcut_name'..."
shortcuts run "$shortcut_name" --input-path "$image_path"
print "Published successfully."
