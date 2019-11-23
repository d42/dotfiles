abbr -a e nvim
abbr -a ef "nvim (fzf)"
abbr -a g git
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'
abbr -a gam git commit --amend --no-edit
abbr -a l exa
abbr -a ll exa -l
abbr -a rf rm -rfv 
abbr -a c cat
abbr -a dc docker-compose
set -x PYENV_ROOT ~/.pyenv
set -x PATH $PATH ~/.poetry/bin
set -x PATH $PATH ~/node_modules/.bin/
set -x PATH $PATH ~/go/bin/
set -x PATH $PATH ~/.local/bin
set -x PATH $PATH ~/.pyenv/bin
set -x EDITOR nvim

source ~/.asdf/asdf.fish
set SPACEFISH_USER_SHOW true
set -x SPACEFISH_PROMPT_ADD_NEWLINE false
set SPACEFISH_PROMPT_ORDER time user dir host git package docker ruby golang rust aws venv exec_time line_sep jobs exit_code char
set SPACEFISH_PYENV_SYMBOL s
status --is-interactive; and source (pyenv init -|psub)
