#!/bin/bash

TARGET_DIR="."

mkdir -p Images Documents Videos Music Archives Scripts Others

for file in "$TARGET_DIR"/*; do
    [ -f "$file" ] || continue

    case "${file,,}" in
        *.jpg|*.jpeg|*.png|*.gif|*.webp)
            mv "$file" Images/
            ;;
        *.pdf|*.doc|*.docx|*.txt|*.md)
            mv "$file" Documents/
            ;;
        *.mp4|*.mkv|*.avi|*.mov)
            mv "$file" Videos/
            ;;
        *.mp3|*.wav|*.flac)
            mv "$file" Music/
            ;;
        *.zip|*.rar|*.7z|*.tar|*.gz)
            mv "$file" Archives/
            ;;
        *.sh|*.py|*.js)
            mv "$file" Scripts/
            ;;
        *)
            mv "$file" Others/
            ;;
    esac
done

echo "✅ Files organized successfully!"

