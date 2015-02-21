# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

function installcask() {
  brew cask install "${@}" 2> /dev/null
}

installcask dropbox
installcask google-chrome
installcask iterm2
installcask macvim
installcask sublime-text3
installcask the-unarchiver
installcask vlc
