# **<u>Instructions For Just file set up</u>**

1. All of my just files are in the `~/chessFiles/ujust` directory.  You should `mkdir -p ~/.config/just`, then copy all of the files from chessFiles there.  Move the justfile up one level to ~/.config.
2. You may need to `brew install just fzf`
3. Make an alias in ~/.bashrc:   `alias mjust="just --justfile ~/.config/justfile"`
4. Running `mjust` will bring up a "chooser" by default, or you can use specific commands like `mjust update` 

## <u>Current Configurations</u>

**Rstudio:** on Ubuntu 24 distrobox

*sudo apt install r-base r-base-dev libnspr4 libnss3 libasound2t64* *libcurl4-openssl-dev  libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev libwebp-dev*

*sudo apt install -f libxm2-dev libfontcofig1-dev* 

*sudo apt-get install -f  [the rstudio deb]* 

**Warp Terminal:** App image using *Gear Lever* Flatpak

**Tailscale:** On image; just configure

**Syncthingy:** Flatpak

**rclone:** Installed via Brew  

*mkdir -p ~/GoogleDrive*

*mkdir -p ~/OneDrive*

*mkdir -p ~/.config/systemd/user*

*brew install rclone*

*rclone config*

*cp ~/chessFiles/systemd/rclone-mount.service ~/.config/systemd/user/*

*systemctl --user enable --now rclone-mount.service*

*systemctl --user start rclone-mount*

**Antigravity:**  Install tarball and use desktop file in `~/chessFiles` to `~/.local/share/applications`



**Nice way to alias a command only available in a distrobox:**

`rscript() { 
   distrobox enter ubuntu24 -- Rscript "$@" 
}` 

 
