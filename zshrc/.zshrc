# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Custom scripts
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/scripts"

export XDG_CONFIG_HOME="$HOME/.config"
export TEXMFVAR=~/.texlive/texmf-var
# export MANPATH="/usr/local/man:$MANPATH"
#
export DYNAMORIO_HOME="$HOME/personal/instrumentacion/DynamoRIO-Linux-11.3.0-1"

ZSH_THEME="minimal"

# Disabling underlying
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES+=(path none path_prefix none)
ZSH_HIGHLIGHT_DIRS_BLACKLIST=(/*/)


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git 
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source /usr/bin/virtualenvwrapper.sh

# Custom prompt
# PROMPT="%B%F{#C34043}%n%f%F{#C8C093}@%f%F{green}%m%f%b: %B%F{cyan}%c%f%b %(?:%F{green}➜%f :%F{red}➜%f )\$(git_prompt_info)"
PROMPT="%2~ \$(git_prompt_info)»%b "

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias nvim="/opt/nvim/nvim"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias p='sudo pacman'
alias flameshot='flameshot gui'
alias vim='nvim'
alias svim='sudo nvim'
alias rm="rm -iv"
alias z="zathura"
alias personal="cd $HOME/personal"
alias 60fps="swaymsg \"output eDP-1 mode 1920x1080@60Hz\""
alias 240fps="swaymsg \"output eDP-1 mode 1920x1080@240Hz\""

alias drrun="$DYNAMORIO_HOME/bin64/drrun"
