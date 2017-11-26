#!/bin/bash
sudo apt update

# For Ubuntu
sudo apt-get install arandr
sudo apt-get install atool
sudo apt-get install build-essential
sudo apt-get install calcurse
sudo apt-get install compton
sudo apt-get install cups
sudo apt-get install curl
sudo apt-get install dunst
sudo apt-get install evince
sudo apt-get install feh
sudo apt-get install ffmpeg
sudo apt-get install fontconfig
sudo apt-get install fonts-font-awesome
sudo apt-get install fonts-noto
sudo apt-get install gimp
sudo apt-get install git
sudo apt-get install gzip
sudo apt-get install highlight
sudo apt-get install htop
sudo apt-get install i3
sudo apt-get install i3lock
sudo apt-get install i3status
sudo apt-get install imagemagick
sudo apt-get install libav-tools
sudo apt-get install libglib2.0-dev
sudo apt-get install mediainfo
sudo apt-get install moc
sudo apt-get install mocp
sudo apt-get install mpd
sudo apt-get install mpv
sudo apt-get install msmtp
sudo apt-get install mupdf
sudo apt-get install mutt
sudo apt-get install nano
sudo apt-get install ncmpcpp
sudo apt-get install neofetch
sudo apt-get install network-manager
sudo apt-get install offlineimap
sudo apt-get install openssh-server
sudo apt-get install p7zip
sudo apt-get install pandoc
sudo apt-get install python3
sudo apt-get install python3-netifaces
sudo apt-get install python3-pip
sudo apt-get install python3-psutil
sudo apt-get install qutebrowser
sudo apt-get install ranger
sudo apt-get install rofi
sudo apt-get install rsync
sudo apt-get install rxvt-unicode
sudo apt-get install screenfetch
sudo apt-get install scrot
sudo apt-get install speedometer
sudo apt-get install texlive
sudo apt-get install texlive-lang-german
sudo apt-get install textlive-latex-extra
sudo apt-get install tmux
sudo apt-get install ubuntu-drivers-common
sudo apt-get install urxvt
sudo apt-get install vim
sudo apt-get install w3m
sudo apt-get install wget
sudo apt-get install wicd
sudo apt-get install xautolock
sudo apt-get install xcompmgr
sudo apt-get install xdotool
sudo apt-get install xinit
sudo apt-get install xorg
sudo apt-get install xserver-xorg
sudo apt-get install youtube-dl

# i3 gaps
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install


tlmgr info collections | grep -o 'collection-[A-Za-z]*' | xargs tlmgr install

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/ying17zi/vim-live-latex-preview.git
mv vim-live-latex-preview ~/.vim/bundle/ 
