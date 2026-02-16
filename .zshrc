eval "$(starship init zsh)"
  # Zoxide
eval "$(zoxide init zsh)"
  # User configuration
  
  # Aliases
alias j="export java_home=/usr/local/opt/openjdk ; java -version"
alias vs="code ."
alias c="clear"
alias f="open ."
  
  # cd
alias cd="z"
alias ..='z ..'
alias ...='z ../..'
alias ....='z ../../..'
  
# eza https://github.com/eza-community/eza?tab=readme-ov-file
alias ls="eza --icons --group-directories-first -a"
alias ll="eza --icons --group-directories-first -al"
# bat https://github.com/sharkdp/bat
alias cat="bat"

sdkman() {
  unset -f sdkman  # Unset stub
  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
  sdkman "$@"
}

#git functions
grebase() {
  git rebase -i HEAD~$1
}

grewind() {
  git reset --hard HEAD~$1
}

gamend() {
  git add .
  git commit --amend
}

gcontinue(){
  git rebase --continue
}

gabort(){
  git rebase --abort
}

gstash(){
  git stash
}

gpop(){
  git stash pop
}

gpush(){
  git push --force-with-lease
}
gpull(){
  git gpull
}

# Optimile Aliases
alias ptest="docker compose run manage-platform test --keepdb"



# Command completions
autoload -Uz compinit
compinit


# The following lines have been added by Docker Desktop to enable Docker CLI completions.
# Single compinit with cache safety (covers Docker too)
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(N-1) ]]; then
  compinit
else
  compinit -C  # Skip security check
fi
# End of Docker CLI completions

# pnpm
export PNPM_HOME="/Users/pashioya/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# BEGIN ANSIBLE MANAGED BLOCK - NVM SETUP
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # Loads nvm bash_completion
# END ANSIBLE MANAGED BLOCK - NVM SETUP
export LANG="en_US.UTF-8"

# For dotnet
export PATH="/usr/local/share/dotnet:$PATH"

# For postgresql
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# for autocomplete
source ~/.zsh-autocomplete/zsh-autocomplete.plugin.zsh


