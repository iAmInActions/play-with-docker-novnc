#!/bin/bash
apt update
apt install -y qemu-system-arm qemu-utils python2 git dialo
git clone https://github.com/ayunami2000/noVNC
./noVNC/utils/launch.sh --listen 80 &
git clone https://github.com/iAmInActions/raspbian-emulation-vnc-stuff
cd raspbian-emulation-vnc-stuff
chmod +x ./runme.sh
./runme.sh
bash --login
