# Path to your oh-my-zsh installation.
export ZSH=/Users/adamzfc/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="gnzh"
#ZSH_THEME="seeker"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize pip python brew osx zsh-syntax-highlighting)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#-------- History {{{
#------------------------------------------------------
# get more info: $man zshoptions

# EDITOR=/usr/local/Cellar/macvim/7.4-99/MacVim.app/Contents/MacOS/Vim
EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt INTERACTIVE_COMMENTS        # pound sign in interactive prompt
HISTFILE=~/.zsh_history            # where to save zsh history
HISTSIZE=10000
SAVEHIST=10000
cfg-history() { $EDITOR $HISTFILE ;}

#
# }}}
#-------- PATH set {{{
#------------------------------------------------------
export PATH=~/Library/Android/sdk/platform-tools/:$PATH
export PATH=~/Library/Android/sdk/:$PATH
export PATH=~/bin/:$PATH
source ~/.bash_profile

# }}}
#-------- alias set {{{
#------------------------------------------------------
#alias vim=/usr/local/Cellar/macvim/7.4-101/MacVim.app/Contents/MacOS/Vim
alias vi=/Applications/MacVim.app/Contents/MacOS/Vim
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias la='ls -la'
alias python2=python
# load alias/functions that works with both zsh/bash
if [[ -f ~/.aliasrc ]]; then
    source ~/.aliasrc
fi
enable_proxy() {
    export http_proxy="127.0.0.1:8118" 
    export https_proxy="127.0.0.1:8118" 
}
enable_sniffer() {
    export http_proxy="127.0.0.1:8888" 
    export https_proxy="127.0.0.1:8888" 
}


disable_proxy() {
    unset http_proxy
    unset https_proxy
}
# }}}
#-------- Java Home set {{{
#------------------------------------------------------
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# }}}
#-------- Virtual Environment {{{
#------------------------------------------------------
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Projects
# source /usr/local/bin/virtualenvwrapper.sh

# }}}
#-------- ls color set {{{
#------------------------------------------------------
export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=gxfxcxdxcxegedabagacad

# }}}
#-------- Vim Mode {{{
#------------------------------------------------------
# enable vim mode on commmand line
##bindkey -v

# edit command with editor
# http://stackoverflow.com/a/903973
# usage: type someshit then hit Esc+v
##autoload -U edit-command-line
##zle -N edit-command-line
##bindkey -M vicmd v edit-command-line



# no delay entering normal mode
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
##KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
##function zle-line-init zle-keymap-select {
##    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
##    RPS2=$RPS1
##    zle reset-prompt
##}
##zle -N zle-line-init
##zle -N zle-keymap-select

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
##bindkey -a u undo
# bindkey -a '^R' redo	# conflicts with history search hotkey
##bindkey -a '^T' redo
##bindkey '^?' backward-delete-char	#backspace

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
##bindkey -M viins '^r' history-incremental-search-backward
##bindkey -M vicmd '^r' history-incremental-search-backward

# use cursor blinker color as indicator of vi mode
# http://andreasbwagner.tumblr.com/post/804629866/zsh-cursor-color-vi-mode
# http://reza.jelveh.me/2011/09/18/zsh-tmux-vi-mode-cursor

# bug; 112 ascii randomly showing up

#zle-keymap-select () {
#  if [ $KEYMAP = vicmd ]; then
#    if [[ $TMUX = '' ]]; then
#      echo -ne "\033]12;Red\007"
#    else
#      printf '\033Ptmux;\033\033]12;red\007\033\\'
#    fi
#  else
#    if [[ $TMUX = '' ]]; then
#      echo -ne "\033]12;Grey\007"
#    else
#      printf '\033Ptmux;\033\033]12;grey\007\033\\'
#    fi
#  fi
#}
#zle-line-init () {
#  zle -K viins
#  echo -ne "\033]12;Grey\007"
#}
#zle -N zle-keymap-select
#zle -N zle-line-init

# }}}
