# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux)

# https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
# interesting plugins
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/1password
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ag
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aliases
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/alias-finder
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/autoenv
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/autojump
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/autopep8
# https://github.com/zsh-users/zsh-autosuggestions
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/branch
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/catimg
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/compleat
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dotenv
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/extract
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fabric
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fancy-ctrl-z
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fd
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-auto-fetch
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gitfast
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-flow
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-prompt
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/globalias
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/httpie
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jira
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jsontools
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pep8
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pip
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pipenv
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pj
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pyenv
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pylint
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/python
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ripgrep
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/rust
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/safe-paste
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/scd
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sdk
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/systemd
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/thefuck
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/themes
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux-cssh
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmuxinator
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ubuntu
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/universalarchive
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/virtualenv
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/virtualenvwrapper
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zoxide
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zsh-interactive-cd
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zsh-navigation-tools
#

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# export TERM='xterm-256color'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# zsh alias
 alias zshconfig="nvim ~/.zshrc"
 alias zshreload="omz reload"
 alias zshcheat="firefox https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet"

 # tmux alias
 alias tmuxconfig="nvim ~/.tmux.conf"
 alias tmuxreload="source ~/.tmux.conf"
