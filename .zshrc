source ~/antigen.zsh

# Plugins
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

export EDITOR='nvim'
export PATH="$HOME/.local/bin/:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$HOME/Library/Python/3.7/bin/"
