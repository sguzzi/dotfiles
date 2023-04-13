if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

export PATH="$HOME/.cargo/bin:$PATH"

set -x NVM_DIR ~/.nvm
nvm use default --silent

alias ll 'ls -lahG'
alias npm-reinstall 'rm -rf node_modules && rm -f package-lock.json && npm i --force'

set -gx GPG_TTY (tty)

pyenv init - | source
starship init fish | source
