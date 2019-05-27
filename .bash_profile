# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsh='ls -lhGFr'
alias lsa='ls -lhaGFr'
alias reload='source ~/.bashrc'

# git aliases

alias gm='git merge --no-ff --no-commit'
alias gmc='git ls-files --unmerged | cut -f2 | uniq' # git merge conflicts
alias ga='git commit -a --amend --no-edit'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit --verbose'
alias gca='git commit --all --verbose'
alias gd='git diff'
alias gco='git checkout'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpom='git push origin master'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grd='git rm $(git ls-files -d)'   # git remove deleted
alias grq='git rebase --interactive --autosquash'
alias gs='git status -b -s --ignore-submodules=dirty'
alias gl='git log --pretty=format:"%C(yellow)%h%C(reset)|%C(bold blue)%an%C(reset)|%s" | column -s "|" -t | less -FXRS'

# vim alias

alias dvim='docker run -it --rm -v ~/:/mnt/tcb -v $PWD:/mnt/local  work-image'

# gcloud aliases

alias gcil='gcloud compute instances list'
alias gcsp='gcloud config set project'
alias gcpl='gcloud projects list'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/bin/google-cloud-sdk/completion.bash.inc'; fi

## ansible stuff

# 1password logins, new way
alias op-signin='eval $(op signin https://invenshure.1password.com)'
alias op-logout='op signout && unset OP_SESSION_example'

# add homedir/bin to path 
export PATH=$PATH:/Users/thadbrown/bin

