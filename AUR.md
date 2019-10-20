# AUR
## Manual Update:

```cd /directory/that/contains/thepkgbuild
git pull        # no need for "origin master" - it should be tracked automatically
makepkg -si
((pacman -U thepackage-1.33-7-any.pkg.tar.xz))
