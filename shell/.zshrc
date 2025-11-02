# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Configure oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k"
ZSH_DISABLE_COMPFIX="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="%d/%m/%Y"

plugins=(
  tmux
  gpg-agent
  #zsh-interactive-cd
  zsh-autocomplete
  zsh-autosuggestions
  zsh-syntax-highlighting
)
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOQUIT=false
ZSH_TMUX_AUTOREFRESH=true
ZSH_TMUX_UNICODE=true

fpath+="${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src"
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Configure path
export PATH=$HOME/.local/bin:$PATH
export PATH=/snap/bin:$PATH

export BUN_INSTALL=$HOME/.bun
export PATH=$BUN_INSTALL/bin:$PATH

export PATH=$HOME/depot_tools:$PATH

#FNM_PATH=$HOME/.local/share/fnm
#if [[ -d $FNM_PATH ]]; then
#  export PATH=$HOME/.local/share/fnm:$PATH
#  eval "$(fnm env --corepack-enabled --use-on-cd --shell zsh)"
#fi

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export PATH=$HOME/.juliaup/bin:$PATH

export PATH=/mnt/c/Program\ Files/Microsoft\ VS\ Code/bin:$PATH

# Configure GPG
#export GPG_TTY
#precmd_functions+=(_set_gpg_tty)
#function _set_gpg_tty() {
#  GPG_TTY=$(tty)
#}

# Configure bat
export BAT_THEME="Dracula"

# Export directory variables
export PERSONAL=/mnt/c/Personal
export PEN=$PERSONAL/Pentesting
export PEN_LISTS=$PEN/Lists
export PEN_RECON=$PEN/Reconnaissance
export PEN_REPORTS=$PEN/Reports
export PEN_TOOLS=$PEN/Tools
export PROJ=$PERSONAL/Projects
export REP=$PERSONAL/Repositories

# Load Rust
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env

# Load nvm
[[ -f $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh

# Load fzf
[[ -f $HOME/.fzf.zsh ]] && source $HOME/.fzf.zsh

# Configure aliases/completions/functions
[[ -f ~/.zsh_aliases ]] && source $HOME/.zsh_aliases

[[ -s $PEN_TOOLS/Utilities/gf/gf-completion.zsh ]] && source $PEN_TOOLS/Utilities/gf/gf-completion.zsh
[[ -s $HOME/.bun/_bun ]] && source $HOME/.bun/_bun

open() {
  if [[ -n "$1" ]]; then
    /mnt/c/Windows/explorer.exe $(wslpath -w "$1")
  else
    /mnt/c/Windows/explorer.exe $(wslpath -w "$PWD")
  fi
  return 0
}
