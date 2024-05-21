source ~/.commonrc

function process_git_diff() {
    local diffs="$1"

    if [ -z "$diffs" ]; then
        echo "no changes"
        return
    fi
     
    local files_changed insertions deletions

    # Extract the number of files changed, insertions, and deletions
    files_changed=$(echo "$diffs" | awk '{print $1}')
    insertions=$(echo "$diffs" | awk '{print $4}')
    deletions=$(echo "$diffs" | awk '{print $6}')

    local output="$files_changed +$insertions -$deletions"
    echo "$output"
}

function git_stats()
{
  branch=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p')

  if [[ $branch == "" ]];
  then
    :
  else
    branch_diffs=$(git diff --shortstat)
    main_diffs=$(git diff --shortstat $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@') HEAD)
    diffs_to_push=$(process_git_diff "$branch_diffs")
    pr_size=$(process_git_diff "$main_diffs")
    echo '%B%F{blue}'$branch' %f%F{yellow}origin: '$diffs_to_push'%f %F{red}PR size: '$pr_size'%f%b'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

current_dir='%F{white}%B%2/%b%f'
newline=$'\n'
PROMPT='$current_dir $(git_stats)$newline'

alias zshrc='vi ~/.zshrc'
alias sz='source ~/.zshrc'
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
bindkey -s ^P "~/scripts/tmux-nav.sh\n"
