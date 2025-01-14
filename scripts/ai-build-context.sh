#!/bin/bash

select_and_concatenate_files() {
  local selected_files
  selected_files=$(find . -type f -not -path '*/node_modules/*' | fzf -m --height 40% --border --ansi --preview 'cat {}')

  if [[ -n "$selected_files" ]]; then
    concatenated_content+="# Existing Related Files For Context"$'\n\n'
    while IFS= read -r file; do
      concatenated_content+="## File: $file"$'\n\n'
      concatenated_content+="Code:"$'\n\n'
      concatenated_content+="\`\`\`"$'\n'
      concatenated_content+="$(<"$file")"$'\n\n'
      concatenated_content+="\`\`\`"$'\n\n'
    done <<<"$selected_files"
    echo "$concatenated_content"
  else
    echo "No file selected."
  fi
}

context=$(select_and_concatenate_files)
context+=$'\n\n'
context+="# Tasks"$'\n\n'
context+="- ?"
token_count=$(echo "$context" | sed 's/.\{4\}/& /g' | wc -w)
echo "$context" | pbcopy
echo "✅ Copied prompt to clipboard! $token_count tokens"
