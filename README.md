# Space Nerds in Space Flatpak

Space Nerds in Space is a linux only space bridge simulator.

You can build it yourself on your distro here:

https://smcameron.github.io/space-nerds-in-space/

Or:

# Insatll from Flathub

If your distro does not already have flatpak installed, install flatpak for your linux distro as per: https://flatpak.org/setup/

https://flathub.org/apps/io.github.smcameron.space-nerds-in-space

```
flatpak install flathub io.github.smcameron.space-nerds-in-space
flatpak run io.github.smcameron.space-nerds-in-space
```

# Install with flatpak manually

If your distro does not already have flatpak installed, install flatpak for your linux distro as per: https://flatpak.org/setup/

Then download the bundle: https://github.com/vpelss/snis_flatpak/releases/tag/Download

Then Install from a terminal. (you may need to run prefix sudo)

```
flatpak install --user --bundle io.github.smcameron.space-nerds-in-space.x86_64

```

Then run it: 

```
flatpak run io.github.smcameron.space-nerds-in-space
```

# AppImage

We also have an AppImage version: https://github.com/vpelss/Space-Nerds-In-Space-Appimage

-----------------

# WSL Installation Results

If SNIS is not working on your distribution, you might need to install some libraries. 

Note: fuse is required for AppImage only.

Ubuntu WSL

```
sudo apt update
sudo apt install portaudio xorg mesa-utils libportaudio2 libfuse2
```

openSUSE WSL

```
sudo zypper install libfuse2 xorg-x11 Mesa libportaudio2
```

Debian WSL

```
sudo apt install fuse libfuse2 xorg portaudio19-dev
```

Arch WSL 

- working on. stuck at: Unable to initialize SDL (Video):  No available video device
- sudo pacman -Syu
- sudo pacman -S fuse2
- sudo pacman -S portaudio
- sudo pacman -S xorg
- sudo pacman -S xfce4 xfce4-goodies
- sudo pacman -S sdl12-compat

  Slackware (this is not going to happen. Too difficult to set up jack on slackware)

  - slackpkg update
  - sudo slackpkg install xorg-server
  - sudo slackpkg install libX11
  - sudo slackpkg install mesa
  - sudo slackpkg install libglvnd
  - sudo slackpkg install libxcb
  - sudo slackpkg install wayland
  - sudo slackpkg install pulseaudio
  - giving up :) Stop using Slackware
