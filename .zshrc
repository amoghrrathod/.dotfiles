# -------- My-zsh ---------

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# ------ Plugins -------
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	fast-syntax-highlighting
  sudo
  web-search
  dirhistory
  history
  jsontools
)

source $ZSH/oh-my-zsh.sh

# Fuzzy finder
eval "$(fzf --zsh)"

# The fuck
eval $(thefuck --alias)

# zoxide 
eval "$(zoxide init zsh)"

# You may need to manually set your language environment
 export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
export EDITOR=nvim
export VISUAL="$EDITOR"
fi

# ------ Aliases -------
alias n="nvim"
alias c="clang -o"
alias ls="eza --color=always --no-filesize --icons=always --no-user --no-time --no-permissions"
alias lt="eza --tree --level=2"
alias cd="z"
alias tf="thefuck"
alias up="brew update && brew upgrade && brew cleanup"
# Path to brew
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
unset ZSH_AUTOSUGGEST_USE_ASYNC


