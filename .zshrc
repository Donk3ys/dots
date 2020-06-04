export PATH="$PATH":"$HOME/.pub-cache/bin"
export ZSH="/Users/donk3y/.oh-my-zsh"

plugins=(
#  dotenv
  git
  last-working-dir
  osx
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ENABLE_CORRECTION="true"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # fzf search

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Respect .gitignore file
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'



ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh



##### Theme
#ZSH_THEME="spaceship"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.oh-my-zsh/custom/themes/gruvbox-material-dark.zsh-theme
#source /usr/local/opt/powerlevel10k/gruvbox-material-dark.zsh-theme
#POWERLEVEL9K_MODE="nerdfont-complete"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#source /Users/donk3y/.zsh/plugins/zsh-autosuggestions
#source /Users/donk3y/.zsh/plugins/zsh-syntax-highlighting

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=0'

# Aliases
alias nv="nvim"
alias mplayer="ncmpcpp"
alias l="ls -l"

#### Speeds up paste time
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}

zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

### points python to pyenv installed python version
eval "$(pyenv init -)"
