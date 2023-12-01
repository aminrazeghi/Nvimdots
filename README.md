## NVIM DOTs
My Nvim configuration is based on LazyVim.

Images are only shown in kitty terminal.
### Dependencies 

Curl, imagemagick and luarocks are required for this project. 

To install the dependencies in Arch Linux, use the following command:
```bash
sudo pacman -S luarocks imagemagick
```
For Debian or Ubuntu systems, the following command can be used:
```bash
sudo apt install imagemagick luarocks
```
Additionally, we must install Magick, which presently is incompatible with Arch Linux but functions seamlessly on Ubuntu.
```bash
luarocks --local install magick 
```

