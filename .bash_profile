parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# add colors
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[93m\]\$(parse_git_branch)\[\033[00m\] $ "

# aliases
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# nvm settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH="$HOME/go"
