if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi

# Important if autocompletion bugs
export LANG=es_ES.utf8

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

# Path to nvim
export PATH="/opt/nvim-linux64/bin:$PATH"

# True color
export COLORTERM=truecolor

# Theme
ZSH_THEME="robbyrussell"
# fpath+=($HOME/.zsh/pure)


# Catppuccin syntax highlighting
# source /home/marko/addons/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# List of aliases, run 'alias'
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
eval $(thefuck --alias)
alias bat="batcat"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias ll="exa -l --icons"
alias la="exa -la --icons"
alias llt="exa -l --tree --level=2 --icons"
alias vim="nvim"
alias oldvim="vim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# starship prompt
eval "$(starship init zsh)"
