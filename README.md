# elementary-OS-Prime-Render-Offload
This project contains a few scripts to enable and disable NVIDIA Prime Rendering offload support for elementary OS 5.1.7 Hera.

YOU MUST USE THE LATEST PROPRIETARY NVIDIA GRAPHICS DRIVERS PROVIDED BY ELEMENTARY OS FOR THIS TO WORK!

These can be installed via the AppCenter.

As of this writing, I am using the NVIDIA 450.80.2

What this means to the user is that it enables NVIDIA's built-in functionality that is similar to how optimus works on Windows without the need for Bumblebee or any other odd pass-through solutions. That is to say, your desktop would be driven by your integrated intel GPU by default, but would allow you to use your discrete NVIDIA GPU to render VULKAN and OpenGL applications in a window using the command "nvidia-run".

As of this writing, this script only disables the system's gpu-manager and nvidia-prime packages which then in turn allows X11 and the NVIDIA drivers to negotiate the automated setup of PRIME Rendering Offload.

I just started this project so it's pretty rough.
Hopefully the name of the scripts are self explanatory.
Use these simple scripts at your own risk.
