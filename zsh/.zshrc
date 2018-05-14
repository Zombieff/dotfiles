# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:$HOME/.cargo/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export VISUAL="vim"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

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
plugins=(git docker gem lol python screen sublime sudo powerline zsh-completions)
POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context time dir rbenv vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs)
POWERLEVEL9K_TIME_BACKGROUND='magenta'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='blue'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='magenta'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='black'
#POWERLEVEL9K_TIME_FOREGROUND='brightwhite'
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='brightwhite'
#POWERLEVEL9K_DIR_HOME_FOREGROUND='brightwhite'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='brightwhite'
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='brightwhite'
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='brightwhite'
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='brightwhite'

source ~/.fonts/*.sh
source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') "
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=6
POWERLEVEL9K_SHORTEN_DELIMITER="…"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

#POWERLEVEL9K_HOME_SUB_ICON="$(print_icon 'HOME_ICON')"
#POWERLEVEL9K_FOLDER_ICON=''
#POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_ICON="$(print_icon 'HOME_ICON')"
POWERLEVEL9K_HOME_SUB_ICON="$(print_icon 'HOME_SUB_ICON')"
#POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON="$(print_icon 'FOLDER_ICON')"

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
alias ll="exa -la --git"
alias gmusic="gmusic-mpd -d ~/.mpd/playlists"
export PATH="/usr/local/sbin:$PATH"
#source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#source ~/.oh-my-zsh/custom/plugins/zsh-completions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# colorful man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;40;36m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

#wal -rt
wpg -t
