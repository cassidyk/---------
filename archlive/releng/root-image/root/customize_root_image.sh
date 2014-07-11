#!/bin/bash

set -e -u

sed -i 's/#\(en_CA\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/Canada/Mountain /etc/localtime

mv /root/mirrorlist /etc/pacman.d/mirrorlist

usermod -s /usr/bin/zsh root
cp -aT /etc/skel/ /root/
echo "root:password" | chpasswd

useradd -m -p "" -g users -G "adm,audio,floppy,log,network,rfkill,scanner,storage,optical,power,wheel" -s /usr/bin/zsh arch
echo SUDONOVERIF=1 >> /etc/yaourtrc

chmod 750 /etc/sudoers.d
chmod 440 /etc/sudoers.d/g_wheel

sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf

systemctl enable pacman-init.service choose-mirror.service
systemctl set-default multi-user.target
systemctl enable sshd

