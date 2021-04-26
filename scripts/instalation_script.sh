#!/usr/bin/bash

# ----------------------Configuring system----------------
echo "Starting to configure system"


# Time
echo "Configuring time..."

timedatectl set-ntp true
timedatectl set-timezone America/Sao_Paulo
hwclock --systohc

# Localization/Language
echo "Configuring locale..."

echo 'pt_BR.UTF-8
en_US.UTF-8' >> /etc/locale.gen

locale-gen

echo 'LANG=pt_BR.UTF-8
LC_MESSAGES=en_US.UTF-8' > /etc/locale.conf

echo 'KEYMAP=br-abnt2' > /etc/vconsole.conf

# Network configuration
echo "Configuring network..."
HOSTNAME=E1-571-arch
echo $HOSTNAME > /etc/hostname

echo "127.0.0.1	    localhost
::1		localhost
127.0.0.1	$HOSTNAME.localdomain $HOSTNAME" > 

# Root password
echo "Configuring root password:"
passwd


# ---------------------------------------------------------


# ----------------------Installing programs----------------
echo "Installing programs. Pay attention"

# 'Variable' programs, in the sense that they may be changed
## Graphical applications
TERM=alacritty
LAUNCHER=dmenu
PANEL=xfce4-panel

## Command-line utilities
SHELL=fish

## Theming
ICON_THEME=breeze-icons

## Core utils
UCODE=intel-ucode
WM=i3-gaps

# Command
pacman -S --needed \

    # Graphical applications
    $TERM \
    $LAUNCHER \
    $PANEL \
    flameshot \
    pavucontrol \
    lxappearance \
    ristretoo \
    telegram-desktop \
    gimp \
    vlc \

    # Command-line utilites
    $SHELL \
    bat \
    exa \
    feh \
    ripgrep \
    rsync \
    unzip \

    # Theming
    breeze-icons \
    grub-theme-vimix \
    starship \

    # Core utils
    base-devel \
    man-db \
    man-pages
    $WM \
    efibootmgr \
    $UCODE \
    grub \
    os-prober \
    grub-customizer \
    xorg \
    lightdm \
    docker-compose \
    sudo \
    htop \
    neovim \
    networkmanager \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji \
    noto-fonts-extra \
    pulseaudio \
    

    # Extras
    neofetch \
    xfce4-clipman-plugin \
    xfce4-pulseaudio-plugin 

# ---------------------------------------------------------

# ----------------------GRUB-------------------------------
echo "Configuring GRUB..."

grub-install --target=x86_64-efi --efi-directory=/boot/efi/ --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
# ---------------------------------------------------------

# ----------------------User-------------------------------
# TODO: add conditional to test whether the home directory exists
echo "Adding user..."
useradd -Um -s /usr/bin/$SHELL -p $1 eduardo
# ---------------------------------------------------------
