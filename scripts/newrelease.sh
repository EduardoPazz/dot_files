#!/usr/bin/env zsh
# @raycast.schemaVersion 1
# @raycast.title New Release
# @raycast.mode silent
# @raycast.icon 🐙
# @raycast.argument1 { "type": "text", "placeholder": "Project's Name", "percentEncoded": true }

local current_timestamp="$(date -u "+%Y-%m-%dT%H.%MZ")"
open "https://github.com/quintoandar/$1/releases/new?tag=$current_timestamp&title=$current_timestamp"
