# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

function installcask() {
  brew cask install "${@}" 2> /dev/null
}

installcask google-chrome
installcask iterm2-beta
installcask istat-menus
installcask dropbox
installcask the-unarchiver
installcask sublime-text3
installcask slack
installcask vlc
installcask steam
installcask alfred
installcask firefox
installcask dash
installcask bowtie
installcask airfoil
installcask bettertouchtool
