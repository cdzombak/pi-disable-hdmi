#!/bin/sh

sed /boot/config.txt -i -e "s/^dtoverlay=vc4-fkms-v3d/#dtoverlay=vc4-fkms-v3d/g"
sed /boot/config.txt -i -e "s/^dtoverlay=vc4-kms-v3d/#dtoverlay=vc4-kms-v3d/g"

systemctl daemon-reload
systemctl enable pi-disable-hdmi.service

echo "Review /boot/config.txt and reboot."
