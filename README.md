# Config files


## Instructions
Add a Git alias to point to a config folder (`/.cfg`) in the home directory.

```bash
alias c='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
```

Clone (bare)
```bash
git clone --bare https://github.com/rosscarrick/dotdotdot.git $HOME/.cfg`
```

Ignore untracked files
```bash
c config --local status.showUntrackedFiles no
```

Copy contents
```
c checkout
```

### Set up Vim
- [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim) at `$HOME/.nvim`
- [Install Vim Plug](https://github.com/junegunn/vim-plug)
- [Install bat](https://github.com/sharkdp/bat)
- [Install rigrep](https://github.com/BurntSushi/ripgrep#installation) 
