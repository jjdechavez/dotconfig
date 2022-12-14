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
