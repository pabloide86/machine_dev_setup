# Copy to C:\Users\$USER$\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster

# Useful shortcuts for jumping dirs
function godesktop { cd ~\Desktop }
function godocs { cd ~\Documents }
function godownloads { cd ~\Downloads }

# Useful commands
function currdir { scb (pwd).Path }
function killem($imageName) { taskkill /f /im $imageName /t }
