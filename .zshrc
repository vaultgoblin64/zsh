if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# fuck that
unsetopt beep

# Completion
zstyle :compinstall filename "$ZDOTDIR/.zshrc"
autoload -Uz compinit
compinit

# zoxide
eval "$(zoxide init zsh --cmd cd)"

# p10k & theme (installed with yay)
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ -f $ZDOTDIR/.p10k.zsh ]] && source $ZDOTDIR/.p10k.zsh

# Sources for cleaner config
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/history.zsh"
source "$ZDOTDIR/zsh-autosuggestions.zsh"

# yay packages
export YSU_HARDCORE=1
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

export PATH="$HOME/.local/bin:$PATH"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
