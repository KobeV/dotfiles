# ADD THIS TO DEFAULT BASHRC


# local bin scripts
export PATH="$HOME/bin:$PATH"

# Define neovimrc path
export NVIMRC="/home/knest/.config/nvim/init.vim"

# Add git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '

# Python
# do not generate .pyc files
export PYTHONDONTWRITEBYTECODE=1
# Add python-project to PYTHONPATH to search for modules
#export PYTHONPATH="~/python-project:$PYTHONPATH"


# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#eval "$(thefuck --alias)"

# protection against rebooting your own PC (if you think you are still logged in on a device you want to reboot)
reboot () { echo 'Zouden we dit wel doen? (y/n)' && read x && [[ "$x" == "y" ]] && /sbin/reboot; }

# zsh
exec zsh
