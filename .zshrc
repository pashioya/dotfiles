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

#rebase function
grebase() {
  git rebase -i HEAD~$1
}

gpush(){
  git push --force-with-lease
}
