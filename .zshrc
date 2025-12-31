if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# fuck that
unsetopt beep

# Completion
zstyle :compinstall filename "$ZDOTDIR/.zshrc"
autoload -Uz compinit
compinit

# p10k & theme (installed with yay)
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ -f $ZDOTDIR/.p10k.zsh ]] && source $ZDOTDIR/.p10k.zsh

# Sources for cleaner config
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/history.zsh"

export PATH="$HOME/.local/bin:$PATH"
