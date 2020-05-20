#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

#--- Set keyboard layout to en-US International
$languageList = New-WinUserLanguageList en-US
$languageList[0].InputMethodTips.Clear()
$languageList[0].InputMethodTips.Add('0409:00020409')
Set-WinUserLanguageList $languageList -Force

# Enable Dark mode
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0

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

#--- Browsers ---
choco install -y googlechrome
choco install -y firefox

#--- Fonts ---
#choco install -y inconsolata
#choco install -y ubuntu.font
choco install -y firacode

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
#choco install -y tortoisesvn
choco install -y tortoisegit
#choco install -y baretail
choco install -y postman
choco install -y telegram
choco install -y skype
choco install -y nimbletext
choco install -y nimbleset

#--- Console Emulators ---
#choco install -y cmder
#choco install -y hyper
choco install -y terminus

#--- Code Editors ---
choco install -y vscode
choco install -y sublimetext3
choco install -y neovim
choco install -y visualstudio2019community --package-parameters "--add Microsoft.VisualStudio.Workload.ManagedDesktop;includeRecommended --passive --locale en-US"

#--- Nodejs ---
choco install -y nodejs-lts
choco install -y yarn

#--- Databases ---
#choco install -y mongodb
#choco install -y mariadb
#choco install -y neo4j-community

#--- Golang ---
choco install -y golang

#--- dotnet ---
choco install -y dotnetcore-sdk
choco install -y ilspy
choco install -y linqpad
#choco install -y sql-server-management-studio
choco install -y azure-data-studio

#--- oh-my-posh ---
#New-Item -ItemType Directory -Force -Path C:\repos\
#git clone https://github.com/powerline/fonts.git c:\repos\fonts
#.\c:\repos\fonts\install.ps1
Install-Module -Name 'oh-my-posh'

Add-Content $profile "Import-Module posh-git"
Add-Content $profile "Import-Module oh-my-posh"
Add-Content $profile "Set-Theme Agnoster"

#Enable-MicrosoftUpdate
#Install-WindowsUpdate -acceptEula

# TODO:
#    [] Setup .vimrc file
#    [] Set chrome as default
