# refer to https://github.com/donnemartin/dev-setup/blob/master/brew.sh

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Zshell
brew install zsh

# Install Python
brew install python

# Install other useful binaries.
brew install ack
brew install tree

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# # Core casks
# brew cask install --appdir="/Applications" alfred
# brew cask install --appdir="/Applications" iterm2
#
# # Development tool casks
# brew cask install --appdir="/Applications" sublime-text
# brew cask install --appdir="/Applications" virtualbox
# brew cask install --appdir="/Applications" vagrant
#
# # Misc casks
# brew cask install --appdir="/Applications" google-chrome

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
