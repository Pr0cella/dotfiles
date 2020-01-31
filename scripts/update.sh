#! /bin/bash
#Show News
yay -Pww
#Update pacman+AUR
yay
#Remove packages older than 2 previous versions
paccache --remove --keep 2
#Remove uninstalled packages
paccache --remove --uninstalled --keep 0
#List vulnerable packages
echo '---- ARCH AUDIT ----'
arch-audit

#Update Firmware
#echo '---- fwupdmgr ----'
#fwupdmgr refresh
#fwupdmgr update
