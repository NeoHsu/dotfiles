# antibody
source <(antibody init)
antibody bundle < $HOME/.zsh_plugins

# asdf
source $HOME/.asdf/asdf.sh

# asdf functions completions
FPATH=$HOME/.asdf/completions:$FPATH

# brew functions completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# TODO
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

# init functions completions from FPATH
autoload -Uz compinit
compinit

# include zsh config
for f ($HOME/.zsh/**/*.zsh(N.)) source $f
