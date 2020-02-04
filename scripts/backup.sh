#! /bin/bash

# Confirm continue
read -p "Backup system? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

echo
echo '## Starting system backup ##'
echo
# Copy recursively, update files, force overwrites, preserve attributes 
echo '# Copying /Home/          #'
sudo cp -r -u -f -p `ls -A | grep -v "Games" | grep -v "Applications" | grep -v "Customization" | grep -v "Downloads" | grep -v "GitHub" | grep -v "HDD" | grep -v "Isos" | grep -v "Backups" | grep -v "Videos"` ~/HDD/Backup/Home
echo '#      -> DONE            #'
echo

echo '# Copying /etc/           #'
sudo cp -r -u -f -p /etc/ ~/HDD/Backup/etc
echo '#      -> DONE            #'
echo

echo '# Copying /boot/          #'
sudo cp -r -u -f -p /boot/ ~/HDD/Backup/boot
echo '#      -> DONE            #'
echo

echo '# Exporting package list  #'
pacman -Qe > ~/HDD/Backup/paclist.txt
echo '#      -> DONE            #'
echo

echo '## Backup completed        ##'



