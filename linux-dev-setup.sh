#!/bin/bash

# Update package list
sudo apt-get update

# Install essential tools
sudo apt-get install -y git curl wget

# Install terminal and development tools
sudo apt-get install -y tilix neovim fzf silversearcher-ag tmux

# Install Docker
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y yarn

# Install other tools
sudo apt-get install -y obs-studio vlc

# Install Barrier (Synergy fork)
sudo apt-get install -y barrier

# Install zsh and oh-my-zsh
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Install global npm packages
npm i -g babel-cli eslint pm2 jest prettier serve create-react-app

# Install VS Code (this might not work on all Linux distributions, you may need to download it manually)
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install -y code

# Install VS Code extensions
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

echo "Setup complete! Please restart your terminal or run 'source ~/.zshrc' to apply changes."
