#!/bin/bash
#find . -type f -exec sed -i 's/iismjd/'$1'/g' {} +
if [ -z "$1" ]; then
    echo "Usage: $0 <dockerHubUsername>"
    exit 1
fi

find . -type f -exec file --mime {} + | grep 'text/' | cut -d: -f1 | while read -r file; do
    sed -i '' 's/iismjd/'"$1"'/g' "$file"

done
