#╔═╗╔═╗╦ ╦
#╔═╝╚═╗╠═╣
#╚═╝╚═╝╩ ╩

# Restart Yabai and Sketchybar at launch
cat /Users/amoghrathod/zsh/art/ascii-text-art.txt

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

#╔═╗╦  ╦ ╦╔═╗╦╔╗╔╔═╗
#╠═╝║  ║ ║║ ╦║║║║╚═╗
#╩  ╩═╝╚═╝╚═╝╩╝╚╝╚═╝
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

# ╔═╗╔═╗
# ║ ╦║ ║
# ╚═╝╚═╝
export PATH="$PATH:$(go env GOPATH)/bin"

source $ZSH/oh-my-zsh.sh

# ╔═╗╔═╗╔═╗
# ╠╣ ╔═╝╠╣ 
# ╚  ╚═╝╚  
eval "$(fzf --zsh)"

# ╔╦╗╦ ╦╔═╗  ╔═╗╦ ╦╔═╗╦╔═
#  ║ ╠═╣║╣   ╠╣ ║ ║║  ╠╩╗
#  ╩ ╩ ╩╚═╝  ╚  ╚═╝╚═╝╩ ╩
eval $(thefuck --alias)

# ╔═╗╔═╗═╗ ╦╦╔╦╗╔═╗
# ╔═╝║ ║╔╩╦╝║ ║║║╣ 
# ╚═╝╚═╝╩ ╚═╩═╩╝╚═╝
eval "$(zoxide init zsh)"

export LANG=en_GB.UTF-8
# ╔═╗╔═╗╦ ╦
# ╚═╗╚═╗╠═╣
# ╚═╝╚═╝╩ ╩
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
export EDITOR=nvim
export VISUAL="$EDITOR"
fi

# ╔═╗╦  ╦╔═╗╔═╗╔═╗╔═╗
# ╠═╣║  ║╠═╣╚═╗║╣ ╚═╗
# ╩ ╩╩═╝╩╩ ╩╚═╝╚═╝╚═╝
alias n="nvim"
alias c="clang -o"
alias ls="eza --color=always --no-filesize --icons=always --no-user --no-time --no-permissions"
alias lt="eza --color=always --no-filesize --icons=always --no-user --no-time --no-permissions --tree --level=2"
alias cd="z"
alias tf="thefuck"
alias up="brew update && brew upgrade && brew cleanup"
alias ub="cd '~/Library/Application Support/Übersicht'"
alias a="exit"
# Git Aliases
alias add="git add"
alias commit="git commit"
alias pull="git pull"
alias stat="git status"
alias gdiff="git diff HEAD"
alias vdiff="git difftool HEAD"
alias log="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias cfg="git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias push="git push"
alias g="lazygit"

# ╔╗ ╦═╗╔═╗╦ ╦
# ╠╩╗╠╦╝║╣ ║║║
# ╚═╝╩╚═╚═╝╚╩╝
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# ╔═╗╔═╗╔╗╔╔╦╗╔═╗
# ║  ║ ║║║║ ║║╠═╣
# ╚═╝╚═╝╝╚╝═╩╝╩ ╩
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


