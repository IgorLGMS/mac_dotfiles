source ~/antigen.zsh

# Plugins
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle tmux
antigen bundle command-not-found
antigen bundle vi-mode

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/igorsilva/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
 # General Aliases
 alias v=vim
 alias vim=nvim

 # Configs
 alias zshconfig="vim ~/.zshrc"
 alias tmuxconfig="vim ~/.tmux.conf"
 alias vimconfig="vim ~/.config/nvim/init.vim"
 alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

 # Theming
 alias maketheme="sh ~/make-theme.sh"
 alias savetheme="sh ~/save-theme.sh"
 alias imgcat="sh ~/imgcat.sh"

 # Git
 alias fetch="git fetch"
 alias stash="git stash"
 alias applystash="git stash apply"
 alias pull="git pull"
 alias push="git push"
 alias commit="git commit -n"
 alias add="git add ."
 alias checkout="git checkout"

 # Navigation
 alias root="cd /"
 alias home="cd ~/"
 alias documents="cd ~/Documents"

 # Project aliases
 # General
 alias start="npm start"
 alias build="npm run build"

 # Shop2grow
 alias shopfe="cd ~/Documents/shop2grow_store"
 alias shopbo="cd ~/Documents/shop2grow_bo" 
 alias shop2grow="ssh ubuntu@shop2grow.net" 

 # Good Boost
 alias goodboost="ssh ubuntu@goodboost.ddns.net" 
 alias goodboostbo="cd ~/Documents/goodboost_bo" 
 alias goodboostfe="cd ~/Documents/goodboost_web" 

 # Prodflow
 alias prodflow="ssh ubuntu@app.productionflowapp.com" 

 # Sparkl
 alias sparkl="ssh ubuntu@sparkl.ddns.net" 
 alias sparklapi="cd ~/Documents/sparkl_api" 
 alias sparkldoc="clear; redoc-cli serve ~/Documents/sparkl_api/Documentation/documentation.yaml" 

 # PlaySports
 alias playsports="ssh ubuntu@playsportsdev.com" 

# Reload last PyWal theme
cat /Users/igorsilva/.cache/wal/sequences

 #if [ "$TMUX" = "" ]; then tmux new-session \; split-window -h \; split-window -v \; attach; fi

 if [ "$TMUX" = "" ]; then tmux new-session; fi

#sh ~/tmux_init.sh

export EDITOR='nvim'
#export TERM=xterm-256color
export PATH="$HOME/.local/bin/:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$HOME/Library/Python/3.7/bin/"
