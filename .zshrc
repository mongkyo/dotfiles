# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mongkyo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes ZSH_THEME="powerlevel9k/powerlevel9k" 
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user virtualenv dir_writable dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicat
# or background_jobs time disk_usage ram)
# POWERLEVEL9K_ROOT_ICON="\uF09C"
#POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

POWERLEVEL9K_ALWAYS_SHOW_USER=true
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  fasd
  tmux
  tmuxinator
)

source $ZSH/oh-my-zsh.sh

# autosuggestions keybind
bindkey '^e' autosuggest-accept

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias v="nvim"
alias vim="nvim"
alias vi="nvim"
alias pv="pipenv run nvim"
alias vimdiff="nvim -d"
alias t="tmux"
alias c="clear"
alias e="exit"
alias pip="pip3"
alias mux="tmuxinator"
alias ju="jupyter notebook"
alias prs="python3 manage.py runserver"
alias shell="python3 manage.py shell_plus"
alias gl="git log --oneline --all --graph"
alias checkip="ifconfig | grep inet"
export EDITOR=/usr/local/bin/nvim

DEFAULT_USER="$(whoami)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/Users/mongkyo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi
# export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

# pyenv
eval "$(pyenv init -)"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NODE_PATH="/usr/local/lib/node_modules"
export PATH="/usr/local/Cellar/node/노드버전/bin:$PATH"
