# Path to your oh-my-zsh installation.
export ZSH=/Users/conny.kawohl/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theunraveler"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker lol mvn node npm nyan os docker lol mvn node npm nyan osx)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dev="cd ~/sites/dev"
alias udev="cd ~/sites/udev"
alias cbref="cd ~/sites/udev/referenz"

alias gs="git status"
alias gpush="git push"
alias gpull="git pull"
alias gfp="git fetch -p"

#PSQL
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

#MAVEN & JAVA
export M2_HOME=/Applications/apache-maven-3.3.9
export PATH=$PATH:$M2_HOME/bin
export MAVEN_OPTS="-Xms512m -Xmx512m -XX:MaxPermSize=256m" export JAVA_HOME=`/usr/libexec/java_home -v 1.7` #ELIXIR export PATH="$PATH:/path/to/elixir/bin" #YARN export PATH="$PATH:`yarn global bin`" #TOMCAT alias tomcat-start=/usr/local/apache-tomcat-8.5.9/bin/startup.sh alias tomcat-stop=/usr/local/apache-tomcat-8.5.9/bin/shutdown.sh #NODE_MODULES GLOBAL

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ZSH STARTUP SCRIPT
echo $(clear)
echo "$(whoami) | $(uname) | $(date)"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export NPM_CONFIG_PREFIX=`npm prefix -g`

export PATH=~/.local/bin:$PATH
alias equal="~/Sites/udev/equal"