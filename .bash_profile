source ~/.bashrc 

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by Anaconda3 4.2.0 installer
export PATH="/Users/thadbrown/anaconda/bin:$PATH"

# added by Anaconda3 4.3.0 installer
export PATH="/Users/thadbrown/anaconda/bin:$PATH"

# map deb server at Bloomington

alias homemap="sshfs tcb@192.168.0.8:/windows /Users/thadbrown/tcb/nzb/"
