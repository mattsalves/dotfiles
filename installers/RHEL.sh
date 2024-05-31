#!/bin/bash

# Update system and install necessary packages
sudo dnf update -y
sudo dnf install -y \
    @development-tools \
    python3 \
    cargo \
    cmake \
    yarn \
    wget \
    curl \
    tmux \
    git \
    npm \
    polybar \
    bspwm \
    sxhkd \
    picom \
    rofi \
    feh \
    ncurses \
    ncurses-devel \
    libunibilium \
    lua-term \
    libtool \
    doxygen \
    gettext \
    gcc \
    gcc-c++ \
    pkgconf \
    unzip \
    ninja-build \
    automake \
    autoconf \
    luarocks \
    zsh \
    gem \
    fontconfig \
    nix

# Update Rubygems and install colorls
sudo gem update --system
sudo gem install colorls

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git /tmp/fonts
cd /tmp/fonts
./install.sh
cd -
rm -rf /tmp/fonts

# Clone dotfiles repository (assuming it exists)
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles

# Install Ranger
git clone https://github.com/ranger/ranger.git /tmp/ranger
cd /tmp/ranger
sudo make install
cd -
rm -rf /tmp/ranger

# Install Tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd -
rm -rf /tmp/tmux

# Install Neofetch
git clone https://github.com/dylanaraps/neofetch.git /tmp/neofetch
cd /tmp/neofetch
sudo make install
cd -
rm -rf /tmp/neofetch

# Install Ripgrep
git clone https://github.com/BurntSushi/ripgrep.git /tmp/ripgrep
cd /tmp/ripgrep
cargo build --release
sudo cp target/release/rg /usr/local/bin
cd -
rm -rf /tmp/ripgrep

# Install Htop
git clone https://github.com/htop-dev/htop.git /tmp/htop
cd /tmp/htop
sh autogen.sh
./configure && make
sudo make install
cd -
rm -rf /tmp/htop

# Install Midnight Commander
git clone https://github.com/MidnightCommander/mc.git /tmp/mc
cd /tmp/mc
./autogen.sh
./configure && make
sudo make install
cd -
rm -rf /tmp/mc

# Install FIGlet
git clone https://github.com/cmatsuoka/figlet.git /tmp/figlet
cd /tmp/figlet
make
sudo make install
cd -
rm -rf /tmp/figlet

# Install Bashtop
git clone https://github.com/aristocratos/bashtop.git /tmp/bashtop
cd /tmp/bashtop
sudo make install
cd -
rm -rf /tmp/bashtop

# Install cli-visualizer
git clone https://github.com/dpayne/cli-visualizer.git /tmp/cli-visualizer
cd /tmp/cli-visualizer/build
cmake ..
make
sudo make install
cd -
rm -rf /tmp/cli-visualizer

# Install Newsboat
git clone https://github.com/newsboat/newsboat.git /tmp/newsboat
cd /tmp/newsboat
make
sudo make install
cd -
rm -rf /tmp/newsboat

# Install chalk-animation
git clone https://github.com/bokub/chalk-animation.git /tmp/chalk-animation
cd /tmp/chalk-animation
npm install
cd -
rm -rf /tmp/chalk-animation

# Install exa
git clone https://github.com/ogham/exa.git /tmp/exa
cd /tmp/exa
cargo build --release
cd -
rm -rf /tmp/exa

# Install mpv
git clone https://github.com/mpv-player/mpv.git /tmp/mpv
cd /tmp/mpv
./bootstrap.py
./waf configure
./waf
sudo ./waf install
cd -
rm -rf /tmp/mpv

# Install musikcube
git clone https://github.com/clangen/musikcube.git /tmp/musikcube
cd /tmp/musikcube
make
cd -
rm -rf /tmp/musikcube

# Install No More Secrets
git clone https://github.com/bartobri/no-more-secrets.git /tmp/no-more-secrets
cd /tmp/no-more-secrets
make
cd -
rm -rf /tmp/no-more-secrets

# Install Pywal
git clone https://github.com/dylanaraps/pywal.git /tmp/pywal
cd /tmp/pywal
sudo pip3 install .
cd -
rm -rf /tmp/pywal

# Install Themer
git clone https://github.com/mjswensen/themer.git /tmp/themer
cd /tmp/themer
npm install
cd -
rm -rf /tmp/themer

# Install tty-clock
git clone https://github.com/xorg62/tty-clock.git /tmp/tty-clock
cd /tmp/tty-clock
make
chmod +x tty-clock
sudo mv tty-clock /usr/local/bin/tty-clock
cd -
rm -rf /tmp/tty-clock

# Install NeoVim
git clone https://github.com/neovim/neovim.git /tmp/neovim
cd /tmp/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd -
rm -rf /tmp/neovim

# Copy NeoVim configuration
cp ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zinit
sh -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma/zinit/HEAD/doc/install.sh)"

# Install vim-plug for Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installation completed!"



