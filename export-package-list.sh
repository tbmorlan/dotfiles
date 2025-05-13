#!/bin/bash

# export pacman packages (without version numbers)
pacman -Qq | sort > pacman-packages.txt

# export AUR packages (without version numbers)
pacman -Qqm | sort > aur-packages.txt

git add pacman-packages.txt aur-packages.txt
git commit -m "Auto-update package list on $(date)"
git push