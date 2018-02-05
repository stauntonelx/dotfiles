#!/bin/bash

## debian 8 install script
## written by Jack van Lisdonk
## run this script with sudo 
## run this script on a minimal net install without desktop
## add contrib and nonfree to your sources.list

apt-get -y update
apt-get -y upgrade 

## terminal enviroment client pc
apt-get -y install tmux gpm links fsarchiver nmap openssh-client \
autofs nfs-common firmware-linux-nonfree ntfs-3g xfsprogs vim \
alsa-utils rsync git

## xorg
apt-get -y install xorg xfonts-terminus 

## openbox
apt-get -y install openbox lxappearance-obconf pcmanfm rxvt-unicode-256color \
menu feh

## eye candy
apt-get install -y faenza-icon-theme faenza-icon-theme gtk2-engines-murrine

# numix from git
mkdir ~/git && cd ~/git
git clone https://github.com/cldx/numix-gtk-theme
git clone https://github.com/numixproject/numix-icon-theme
git clone https://github.com/numixproject/numix-icon-theme-circle

## applicaties
apt-get -y install iceweasel

## virtualbox
apt-get -y install build-essential module-assistant virtualbox-guest-additions-iso
m-a prepare
  # mount iso and run installscript
