#! /bin/bash

cat native.sh > pkg.nat
cat foreign.sh > pkg.for

# install nvidia drivers if nececarry

echo
echo \##############################################################
echo
echo
read -p "install nvidia drivers? [y/n]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo nvidia-open-dkms >> pkg.nat
fi

# install pacman packages
cat pkg.nat | sudo pacman -Sy -

# install AUR packages
sudo pacman -Sy --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

cat pkg.for | yay -Sy -

# apply configs
sudo pacman -Sy --needed rsync

su -c 'rsync -cr root/ / -v'

# apply services
sudo systemctl disable getty@tty1.service
sudo systemctl disable getty@tty2.service
sudo systemctl disable getty@tty3.service
sudo systemctl enable ly@tty3.service
sudo systemctl enable ly@tty3.service
sudo systemtctl enable ly@tty3.service

rm pkg.nat
rm pkg.for
