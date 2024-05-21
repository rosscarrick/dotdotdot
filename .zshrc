source ~/.commonrc

alias zshrc='vi ~/.zshrc'
alias sz='source ~/.zshrc'
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
bindkey -s ^P "~/scripts/tmux-nav.sh\n"
