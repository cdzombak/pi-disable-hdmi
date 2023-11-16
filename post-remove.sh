#!/bin/sh

systemctl daemon-reload
/opt/vc/bin/tvservice -p

echo "You may wish to use raspi-config to switch back to the OpenGL desktop driver."
