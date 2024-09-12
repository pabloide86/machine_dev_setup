# Source: https://dev.to/andrewbaisden/how-i-setup-my-development-environment-on-macos-2021-edition-1lce

# Install Homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Apps to install:
brew install iterm2
brew install visual-studio-code
brew install --cask dbeaver-community
brew install font-fira-code
brew install neovim
brew install fzf
brew install the_silver_searcher
brew install tmux
brew install --cask marta # norton-commander style

brew install docker
brew install postman
brew install telegram
brew install slack
brew install git
brew install node
brew install yarn
brew install notion

#brew install background-music
brew install obs
brew install vlc

# Barrier is a fork of synergy (for sharing keyboard and mouse)
brew install barrier
# TODO:
# cd /Users/USERNAME/Library/Application Support/barrier/SSL
# openssl req -new -x509 -sha256 -days 999 -nodes -out Barrier.pem -keyout Barrier.pem

# Other tools:

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

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

# Install vscode extensions
code --install-extension catppuccin.catppuccin-vsc-icons
code --install-extension chakrounanas.turbo-console-log
code --install-extension codeium.codeium
code --install-extension correiagithubgruvbox.correia-github-gruvbox
code --install-extension crystal-spider.jsdoc-generator
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension franciscosilva.gruber-darker
code --install-extension graphql.vscode-graphql
code --install-extension graphql.vscode-graphql-syntax
code --install-extension hediet.vscode-drawio
code --install-extension huynhduong.nvtokyo-theme
code --install-extension liamhammett.inline-parameters
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.live-server
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode.remote-server
code --install-extension ms-vscode.test-adapter-converter
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension orta.vscode-jest
code --install-extension pomdtr.excalidraw-editor
code --install-extension qufiwefefwoyn.inline-sql-syntax
code --install-extension ryanluker.vscode-coverage-gutters
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension vscodevim.vim
code --install-extension wix.vscode-import-cost
