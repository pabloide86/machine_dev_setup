Disable-UAC

#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

#--- File Explorer Settings ---
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2


# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#--- Windows Subsystems/Features ---
#choco install -y Microsoft-Hyper-V-All -source windowsFeatures
#choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures

#--- Tools ---
#choco install -y visualstudio2017community  # See this for install args: https://chocolatey.org/packages/VisualStudio2017Community

# TODO: should pass install args to VS2017 to install additional options 


#--- Browsers ---
choco install -y googlechrome
choco install -y firefox

#--- Fonts ---
choco install -y inconsolata
# choco install -y ubuntu.font

#--- Tools ---
choco install -y sysinternals
choco install -y winrar
choco install -y git -params '"/GitAndUnixToolsOnPath /WindowsTerminal"'
choco install -y poshgit
choco install -y curl
choco install -y freecommander-xe.install
choco install -y winscp
choco install -y greenshot
choco install -y lessmsi
choco install -y tortoisesvn
choco install -y tortoisegit
#choco install -y baretail
choco install -y postman

#--- Console Emulators ---
choco install -y cmder
choco install -y hyper

#--- Code Editors ---
choco install -y vscode
choco install -y sublimetext3
#choco install -y neovim

#--- Nodejs ---
choco install -y nodejs-lts
choco install -y yarn
#choco install -y mongodb

#--- Golang ---
#choco install -y golang

#--- dotnet ---
choco install -y dotnetcore-sdk
choco install -y ilspy
choco install -y linqpad
choco install -y sql-server-management-studio

#--- oh-my-posh ---
#New-Item -ItemType Directory -Force -Path C:\repos\
#git clone https://github.com/powerline/fonts.git c:\repos\fonts
#.\c:\repos\fonts\install.ps1
#Install-Module -Name 'oh-my-posh'

Enable-UAC
#Enable-MicrosoftUpdate
#Install-WindowsUpdate -acceptEula
