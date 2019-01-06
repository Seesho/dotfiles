# Homebrew
export PATH=/usr/local/bin:$PATH
# Virtualenv/VirtualenvWrapper
source /usr/local/bin/virtualenvwrapper.sh

#export PATH="/usr/local/opt/python/libexec/bin:$PATH"
#MySQL 5.7
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Add colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git autocomplete

if [ -f ~/.git-completion.bash ]; then
        . ~/.git-completion.bash
fi

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Change bash to show branch
#\u = user
#\h = host
#\W = working directory
#\033 = <Esc>
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias ctags="`brew --prefix`/bin/ctags"
alias makectags="ctags -R ."
alias cleanpyc='find . -name '\''*.pyc'\'' -delete'
alias bigfiles='du -h | sort -rh | head -n 20'

alias mysqlhosts="mysql_config_editor print --all | egrep -v password"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export FZF_DEFAULT_COMMAND='fd --type f'
