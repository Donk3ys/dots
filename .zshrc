export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/usr/local/opt/sqlite3/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export ZSH="/Users/donk3y/.oh-my-zsh"
export ANDROID_HOME="/Users/donk3y/Library/Android/sdk" #cordova


ENABLE_CORRECTION="true"
ZSH_DISABLE_COMPFIX=true

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # fzf search
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Respect .gitignore file
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'


##### Theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/themes/gruvbox-material-dark.zsh-theme
#POWERLEVEL9K_MODE="nerdfont-complete"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Highlighting and autosuggestions
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=0'


# Aliases
alias vi="nvim"
alias vim="nvim"
alias l="ls -l"
alias la="ls -a -l"

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
