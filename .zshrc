# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=100000
HISTSIZE=99999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

bindkey -v

source .nix-profile/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source .nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source .nix-profile/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

alias l="eza --icons=always -ahl"
alias cd="z"
alias lmk="latexmk -pdf"

source .nix-profile/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
