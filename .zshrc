# Check if the current OS is Ubuntu
if uname -a | grep -qi microsoft; then
  # Ubuntu specific configurations
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  
  # Paths
  export ZSH="$HOME/.oh-my-zsh"
  export ANDROID_HOME=/mnt/c/Users/johna/AppData/Local/Android/Sdk
  export PATH=$PATH:$ANDROID_HOME/emulator 
  export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
  
  # Themes
  ZSH_THEME="robbyrussell"
  
  # Plugins
  plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
  
  source $ZSH/oh-my-zsh.sh
  

fi

# Check if the current OS is macOS
if uname -a | grep -qi darwin; then
  # macOS specific configurations (if any)
  # Common configurations for all environments

  # ENV Variables
  # example: export ANDROID_HOME=$HOME/Library/Android/sdk

  # Evals
  eval "$(starship init zsh)"
fi

# common configurations for all environments
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

# This part runs regardless of the OS
PATH=~/.console-ninja/.bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

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


# Optimile Aliases
alias ptest="docker compose run manage-platform test --keepdb"
alias otest="docker compose run manage-platform test --keepdb"



# Command completions

autoload -Uz compinit
compinit


# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/pashioya/.docker/completions $fpath)
autoload -Uz compinit
compinit
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
