#!/bin/bash

mkdir -p Images Documents Videos Others

for file in *
do
    if [[ -f "$file" ]]; then

        case "$file" in

            *.jpg|*.jpeg|*.png|*.gif)
                mv "$file" Images/
                ;;

            *.mp4|*.mkv|*.avi)
                mv "$file" Videos/
                ;;

            *.pdf|*.doc|*.docx|*.txt)
                mv "$file" Documents/
                ;;

            *)
                mv "$file" Others/
                ;;
        esac

    fi
done

echo "Files organized successfully"
