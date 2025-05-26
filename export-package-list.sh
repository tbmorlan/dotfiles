#!/bin/bash

REPO_DIR="/home/mika/"

# export pacman
pacman -Qq | sort > "$REPO_DIR/pacman-packages.txt"
#export aur
pacman -Qqm | sort > "$REPO_DIR/aur-packages.txt"