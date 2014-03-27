# Set custom prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt mark

# Initialize completion
autoload -U compinit
compinit
unsetopt correct_all

# add up/down substring search
source $HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Unbreak broken, non-colored terminal
export TERM='xterm-color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

setopt hist_ignore_all_dups
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# export WORDCHARS='*?[]~&;!$%^<>'
# export ACK_COLOR_MATCH='red'

# TMUX POWERLINE
# PS1=
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I_#P") "$PWD")'
# PS1='$ '$PS1

for file in ~/.shrc/*.sh; do
  source "$file"
done

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
