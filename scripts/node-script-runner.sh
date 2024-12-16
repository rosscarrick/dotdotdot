#!/bin/bash

# Check if package.json exists
if [ ! -f "package.json" ]; then
  echo "Error: package.json file not found in the current directory."
  exit 1
fi

# Function to get script details
get_script_details() {
  local script_name="$1"
  grep -P "\"$script_name\":" package.json | sed -E 's/.*: "(.*)".*/\1/'
}

# Determine package manager
if [ -f "yarn.lock" ]; then
  PACKAGE_MANAGER="yarn"
elif [ -f "package-lock.json" ]; then
  PACKAGE_MANAGER="npm"
else
  PACKAGE_MANAGER="npm" # Default to npm if no lock file found
fi

# Extract scripts
scripts=$(sed -n '/^  "scripts": {/,/^  },/p' package.json | sed -e '1d;$d' | sed -n 's/^    "\([^"]*\)".*/\1/p')

# Select script with fzf and execute
selected_script=$(echo "$scripts" | fzf --prompt="Select a script to run: ")

# Execute the selected script if one was chosen
if [ -n "$selected_script" ]; then
  echo "Running $PACKAGE_MANAGER run $selected_script"

  if [ "$PACKAGE_MANAGER" == "yarn" ]; then
    yarn run "$selected_script"
  else
    npm run "$selected_script"
  fi
fi
