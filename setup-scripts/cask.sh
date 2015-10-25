# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

function installcask() {
  brew cask install "${@}" 2> /dev/null
}

installcask google-chrome
installcask iterm2
installcask istat-menus
installcask dropbox
installcask the-unarchiver
installcask atom
installcask slack
installcask textmate
installcask mailbox
installcask vlc
installcask alfred
installcask firefox
installcask dash
installcask bowtie
installcask airfoil
installcask bettertouchtool
