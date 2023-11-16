#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

add_to_path() {
  if [ -n "$1" ]; then
    if [ -d "$1" ]; then
      # Get the absolute path
      absolute_path=$(cd -P -- "$1" && pwd)

      # Check if the path is already in the PATH
      if [[ ":$PATH:" != *":$absolute_path:"* ]]; then
        export PATH="$absolute_path:$PATH"
        echo "Added $absolute_path to PATH"
      else
        echo "$absolute_path is already in PATH"
      fi
    else
      echo "The argument is not a directory: $1"
    fi
  else
    echo "Please provide a directory path as an argument."
  fi
}

source .bash_functions
source .bash_paths

. "$HOME/.cargo/env"
