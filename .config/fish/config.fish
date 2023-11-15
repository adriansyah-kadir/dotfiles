if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

alias vi=nvim
alias vim=nvim
alias docker-rm-all="docker stop $(docker ps -aq) && docker rm $(docker ps -aq)"

# pnpm
set -gx PNPM_HOME "/home/aldo/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
