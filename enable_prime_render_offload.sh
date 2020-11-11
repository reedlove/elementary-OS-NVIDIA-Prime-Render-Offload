#!/bin/bash
echo "Please just say yes to all of the following dialogs."
echo "Check for updates."
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean
echo ""
echo "First, we make sure that the nvidia profile is selected via prime-select, if installed."
sudo prime-select nvidia
echo ""
echo "Now we uninstall the nvidia-prime package."
sudo apt-get -y purge nvidia-prime
echo ""
echo "Disable the gpu-manager service."
sudo systemctl disable gpu-manager.service
echo ""
echo "Delete any lingering xorg.conf.d settings."
sudo rm -v /usr/share/X11/xorg.conf.d/11-nvidia-prime.conf
echo ""
echo "Create the /usr/local/bin/nvidia-run utility."
sudo echo \#\!/bin/bash > nvidia-run
sudo echo __NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia \"\$@\" >> nvidia-run
sudo mv -v nvidia-run /usr/local/bin
sudo chmod a+x /usr/local/bin/nvidia-run
echo ""
echo "When you want to run something on your nvidia gpu, use nvidia-run. I.E.: nvidia-run steam"
echo ""
echo "Reboot your computer and cross your fingers!"
