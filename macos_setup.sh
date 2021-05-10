# Source: https://dev.to/andrewbaisden/how-i-setup-my-development-environment-on-macos-2021-edition-1lce

# Install Homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Apps to install:
brew install iterm2
brew install visual-studio-code
brew install azure-data-studio
brew install font-fira-code
brew install neovim
brew install fzf
brew install the_silver_searcher

brew install docker
brew install postman
brew install telegram
brew install slack
brew install git
brew install node
brew install yarn
brew install notion

brew install background-music
brew install obs
brew install vlc

# Other tools:

# npm global packages
npm i -g babel-cli
npm i -g eslint
npm i -g pm2
npm i -g jest
npm i -g prettier
npm i -g serve
npm i -g create-react-app


# Download oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

#  Show hidden files on finder
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder

