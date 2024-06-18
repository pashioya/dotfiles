# Aliases
# ---
#
# Java
#
alias j="export java_home=/usr/local/opt/openjdk ; java -version"
#
#
# Msc
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


# ENV Variables
#
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export java_home=/opt/homebrew/opt/openjdk@17/ 
# Evals
# ---
#
#eval "$(jump shell)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

PATH=~/.console-ninja/.bin:$PATH
