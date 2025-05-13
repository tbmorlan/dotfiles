#!/bin/bash

# pacman packages
pacman -Qq | sort > pacman-packages.txt

# AUR packages
pacman -Qqm | sort > aur-packages.txt

git add pacman-packages.txt aur-packages.txt
git commit -m "Auto-update package list on $(date)"
git push