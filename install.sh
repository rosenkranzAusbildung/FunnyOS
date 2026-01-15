#! /bin/bash

# install nvidia drivers if nececarry
read -p "install nvidia drivers? [y/n]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo pacman -S nvidia-open-dkms
fi

# install pacman packages
cat native.sh | sudo pacman -Sy -

# install AUR packages
sudo pacman -Sy --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

cat foregin.sh | yay -Sy -

# apply configs
sudo pacman -Sy --needed rsync

su -c 'rsync -cr root/ / -v'

# apply services
sudo systemctl disable getty@tty1.service
sudo systemctl disable getty@tty2.service
sudo systemctl disable getty@tty3.service
sudo systemctl enable ly@tty3.service
sudo systemctl enable ly@tty3.service
sudo systemctl enable ly@tty3.service
