add_to_path() {
  if [ -n "$1" ]; then
    if [ -d "$1" ]; then
      # Get the absolute path
      absolute_path=$(cd -P -- "$1" && pwd)

      # Check if the path is already in the PATH
      if [[ ":$PATH:" != *":$absolute_path:"* ]]; then
	
        echo "export PATH=\"$absolute_path:$PATH\"" >> .bash_paths
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
source .bash_paths
}
