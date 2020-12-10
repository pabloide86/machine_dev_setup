# Copy to C:\Users\$USER$\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

Import-Module posh-git

# Update path to oh-my-posh version and username
set-poshprompt -Theme "C:\Users\$USER$\Documents\PowerShell\Modules\oh-my-posh\<version>\themes\agnoster.json"

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Only of PSCore - Set-Clipboard alias scb
function scb{
    param(
       [parameter(position=0,mandatory=$true,ValueFromPipeline=$true)]$Text
    )
    begin{
        $data = [system.text.stringbuilder]::new()
    }

    process{
        if ($text){
            [void]$data.appendline($text)
        }
    }

    end{
        if ($data){
            $data.tostring().trimend([environment]::newline) + [convert]::tochar(0) | clip.exe
        }
    }
}

# Useful shortcuts for jumping dirs
function godesktop { cd ~\Desktop }
function godev { cd ~\Development }
function lss {
    ls | sort @{Expression="mode"; Descending=$true},@{Expression="name"; Descending=$false}
}

# Useful commands
function currdir { (pwd).Path | scb }
function shrug { "¯\_(ツ)_/¯" | scb }
function fliptable { "(┛ಠ_ಠ)┛彡┻━┻" | scb }
function killproc($imageName) { taskkill /f /im $imageName /t }
function hist($pattern) {
    if(-not ($pattern)) {
        Get-History -Count 20
    } else {
        Get-History | Select-String -Pattern $pattern
    }
}
function rhist($num) {
    Invoke-History $num
}

# Git shortcuts
function glog() { git log --oneline -10 }
function gs() { git status }
function gds() { git diff --staged }
function gca($msg) { git commit -m -a $msg }
function grev() { git reset --hard HEAD; git clean -fdx; }

# Initialize a git directory with a readme
function ginit($name, $description) {
  if ( -not (Test-Path $name)) {
    mkdir $name;
    cd $name;
    git init;
    $description > Readme.md;
    git add Readme.md;
    git commit -m "Initial commit";
  } else {
      Write-Host "Folder already exists"
      cd $name;
  }
}

# Android Development
function startavd() { C:\Users\Pablo\AppData\Local\Android\Sdk\emulator\emulator.exe -avd "Pixel_2_API_26" }

