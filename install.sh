#!/bin/bash
set -euo pipefail

archiving_dir="${1:-$HOME/Archiving}"

mkdir -pv "$HOME/.local/bin"

for file in scripts/*; do
    if [ -f "$file" ]; then
        target="$HOME/.local/bin/$(basename "$file")"
        install -m 755 "$file" "$target"
        echo "Installed: $target"
    fi
done

mkdir -pv "$archiving_dir/Camera"
mkdir -pv "$archiving_dir/Phone"

cp -f README.md "$archiving_dir/README.md"
cp -f Camera-WORKFLOW.md "$archiving_dir/Camera/WORKFLOW.md"
cp -f Phone-WORKFLOW.md "$archiving_dir/Phone/WORKFLOW.md"
cp -f FIXING-FILES.md "$archiving_dir/FIXING-FILES.md"

echo
echo "Installed media archiving tools."
echo "Scripts installed in: $HOME/.local/bin"
echo "Working directories created in: $archiving_dir"
echo "You can move this Archiving directory anywhere later if needed."
echo
echo "You can import camera files into:"
echo "  $archiving_dir/Camera"
echo
echo "You can import phone files into:"
echo "  $archiving_dir/Phone"
echo
echo "Make sure $HOME/.local/bin is in your PATH."
