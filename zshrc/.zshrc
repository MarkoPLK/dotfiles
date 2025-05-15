# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Custom scripts
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/scripts"

export XDG_CONFIG_HOME="$HOME/.config"
export TEXMFVAR=~/.texlive/texmf-var
# export MANPATH="/usr/local/man:$MANPATH"

# Fix for gray window application using java with dwm
AWT_TOOLKIT=MToolkit

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
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
source /usr/bin/virtualenvwrapper.sh

# Custom prompt
PROMPT="%B%F{#C34043}%n%f%F{#C8C093}@%f%F{green}%m%f%b: %B%F{cyan}%c%f%b %(?:%F{green}➜%f :%F{red}➜%f )\$(git_prompt_info)"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
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
alias xcopy="xclip -in -selection clipboard"
alias xpaste="xclip -o -selection clipboard"
alias z="zathura"
alias personal="cd /home/markoplk/personal"
alias 60fps="xrandr --output DP-2 --mode 1920x1080 --rate 60"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k-robbyrussel.zsh
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
