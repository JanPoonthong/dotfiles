#!/bin/sh

# Credit to @strager: https://github.com/strager
set -e -E

HERE="$(cd "$(dirname "${0}")" && pwd)"

/usr/bin/dconf dump /org/gnome/terminal/ >"${HERE}/gnome-terminal.ini"
