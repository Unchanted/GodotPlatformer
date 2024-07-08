#!/bin/sh
echo -ne '\033c\033]0;LearningGodot\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Arcade13.x86_64" "$@"
