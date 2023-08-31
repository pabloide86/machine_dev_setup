# --- Directories ---
alias godev="cd ~/Development"
alias godown="cd ~/Downloads"
alias godesk="cd ~/Desktop"
alias gomlp="cd ~/Development/BlueAlba/mlp"

# --- Git ---
alias glog="git log --oneline"
alias gs="git status"
alias grev="git reset --hard HEAD & git clean -fxd"
alias grer="git branch --show-current | xargs -I B git reset --hard origin/'B'"

# Prune merged branches
alias gitprunel="git fetch --prune && git branch -r | awk '{print \$1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print \$1}'| xargs git branch -D"
alias gitpruner="git remote prune origin"
alias skadush="gitpruner && gitprunel"

# Stash current changes, pull and then restore changes
alias hadouken="git add . && git stash && git pull --rebase && git stash pop"

# --- Utils ---
alias currdir="pwd | pbcopy"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias fliptable="echo '(┛ಠ_ಠ)┛彡┻━┻' | pbcopy"
alias myip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g' | pbcopy"

