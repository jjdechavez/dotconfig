# Append on .bashrc
# if [ -f ~/.bash_aliases ]; then
#     source ~/.bash_aliases
# fi

alias sb='source ~/.bashrc'

# DIRECTORY ALIASES
alias stationfive='git work && echo "Git email: $(git email)" && cd $HDD_PATH/office/stationfive'
alias my='git personal && echo "Git email: $(git email)" && cd $HDD_PATH/my'
alias playground='git personal && echo "Git email: $(git email)" && cd $HDD_PATH/playGround'

# GIT ALIASES
# Common
alias gco='git checkout'
alias ga='git add'
alias gst='git status'
alias gfa='git fetch -a'
alias gst-staged="git status --short | grep '^\w.'"``
alias gst-unstaged="git status  --short | grep '^\W.'"
alias gst-unstaged-tracked="git status  --short | grep '^\s.'"
alias gst-untracked="git status --short | grep '^??'"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# Branch
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch -D'
alias gbda='git fetch --prune' # Remove deleted branch on remote
# Commit
alias gc='git commit'
alias gcan='gc --amend --no-edit' # Append on last commit without commit message
# Cherry Pick
alias gcp='git cherry-pick'
alias gcpc='git cherry-pick --continue'
alias gcpa='git cherry-pick --abort'
alias branchContainCommitOf='git branch --contains '

# UTILITIES
alias dockerids='docker container ls -q'
alias dockerstopall='docker stop $(dockerids)'
alias dockermongo='docker exec -it mongo mongo -u root -p password --authenticationDatabase admin'
alias listnpmglobal="npm list -g --depth=0"
