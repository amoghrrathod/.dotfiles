
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Uncomment below 3 lines if applying p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
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

# User configuration

# Fuzzy finder
eval "$(fzf --zsh)"

# The fuck
eval $(thefuck --alias)

# zoxide 
eval "$(zoxide init zsh)"

 export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
export EDITOR=nvim
export VISUAL="$EDITOR"
fi

# aliases
alias n="nvim"
alias c="clang -o"
alias ls="eza --color=always --no-filesize --icons=always --no-user --no-time --no-permissions"
alias lt="eza --tree --level=2"
alias cd="z"


export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# >>> conda initialize >>>
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
unset ZSH_AUTOSUGGEST_USE_ASYNC
