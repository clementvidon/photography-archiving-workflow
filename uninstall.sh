#!/bin/bash
set -euo pipefail

for file in scripts/*; do
    if [ -f "$file" ]; then
        target="$HOME/.local/bin/$(basename "$file")"
        rm -f "$target"
        echo "Uninstalled: $target"
    fi
done

echo
echo "Uninstalled photography archiving tools."
