source ~/.myshell/aliases.bash
source ~/.myshell/prompt.bash
source ~/.myshell/git.bash


alias ginger='cd ~/dev/ginger-code/'
alias petition='cd ~/dev/ginger-petition/'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Sets up the command correction https://github.com/nvbn/thefuck
eval $(thefuck --alias)

PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
