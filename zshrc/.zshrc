# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="$PATH:/opt/nvim-linux64/bin"

# Custom scripts
export PATH="$PATH:$HOME/.local/bin/statusbar"
export PATH="$PATH:$HOME/.local/bin"

export XDG_CONFIG_HOME="$HOME/.config"
export TEXMFVAR=~/.texlive/texmf-var
# export MANPATH="/usr/local/man:$MANPATH"

# Fix for gray window application using java with dwm
AWT_TOOLKIT=MToolkit

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Custom prompt
# PROMPT="%B%F{#C34043}%n%f%F{#C8C093}@%f%F{#658594}%m%f%b: %B%F{cyan}%c%f%b %(?:%F{green}➜%f :%F{red}➜%f) \$(git_prompt_info)"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias p='sudo pacman'
alias flameshot='flameshot gui'
alias vim='nvim'
alias svim='sudo nvim'
alias xcopy="xclip -in -selection clipboard"
alias xpaste="xclip -o -selection clipboard"
alias z="zathura"
alias personal="cd /home/markoplk/personal"
