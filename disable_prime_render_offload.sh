#!/bin/bash
echo "Please just say yes to all of the following dialogs."
echo "Check for updates."
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean
echo "Delete nvidia-run."
sudo rm -v /usr/local/bin/nvidia-run
echo "Reinstall the nvidia-prime package."
sudo apt-get -y nvidia-prime
echo "Re-enable the gpu-manager service."
sudo systemctl enable gpu-manager.service
echo "Reboot your computer and cross your fingers again!"
