# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ls='lsd -a'
alias os='cd /home/asem/Sec/Faculty/STUDY\ GROUP/CS-537\ Introduction\ to\ Operating\ Systems'
alias fac='cd /home/asem/Sec/Faculty'
alias cls='clear'
# alias nim='nvim'
alias download='sudo pacman -S'
alias update='sudo pacman -Syu'
alias uninstall='sudo pacman -R'
#alias messenger='nohup ~/messenger-linux-x64/messenger;'
#auto completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   # Include hidden files
#vim mode
bindkey -v
export KEYTIMEOUT=1.
export EDITOR='vim'
export VISUAL='vim'
