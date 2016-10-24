#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri --with-pcre

# Install more recent versions of some macOS tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id

brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli
brew install pngquant
brew install pngout
brew install tesseract
brew install zpaq
brew install wine
brew install winetricks
brew install unrar
brew install nodebrew

# Install devtools
brew install autoconf
brew install autoenv
brew install autogen
brew install autojump
brew install automake
brew install bison
brew install boost --universal --c++11
brew install clang-format
brew install cmake
brew install colordiff
brew install crystal-lang
brew install doxygen
brew install gcc
brew install gawk
brew install gettext
brew install hidapi
brew install libffi
brew install libmpc
brew install libpng
brew install libtool
brew install libusb
brew install libusb-compat
brew install llvm --with-all-targets --with-toolchain --universal
brew install makedepend
brew install mruby
brew install nano
brew install ncurses
brew install pcre
brew install pkg-config
brew install qt5
brew install readline
brew install ruby


# Remove outdated versions from the cellar.
brew cleanup
brew prune

