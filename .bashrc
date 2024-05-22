source ~/.commonrc

alias bashrc='vi ~/.bashrc'
alias sb='source ~/.bashrc'
bind '"\C-p": "sh ~/scripts/tmux-nav.sh\n"'


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
