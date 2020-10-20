#
# ~/.bashrc
#

# Exporting Variables
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export TERM="xterm-256color"
export EDITOR='vim'


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Function for parsing git branch
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Function for getting virtualenv name
function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
         venv=''
    fi
    [[ -n "$venv" ]] && printf "───(\033[1;32mvenv:$venv\033[0;34m)"
}

# Disable the default virtual env prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1
VENV="\$(virtualenv_info)";


# Prompt Customize
PS1="\n \[\033[0;34m\]┌───(\[\033[1;35m\]\u\[\033[0;34m\])───(\[\033[1;32m\]\w\[\033[0;34m\])${VENV}\n └> \[\033[1;36m\]\$ \[\033[0m\]";

# Aliases
alias ..='cd ..'
alias ls='lsd'
alias rm='rm -i'
alias dgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias youtube-dl='youtube-dl -i'
alias firefox='firefox-developer-edition'
alias grep='grep --color=auto'

# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"


