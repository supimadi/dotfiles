#
# ~/.bashrc
#

# Exporting Variables
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export TERM="xterm-256color"
export EDITOR='vim'

# sets vim as manpager -- Credit to Distro Tube
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""

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

# Disable the default virtual env prompt and add the new one
export VIRTUAL_ENV_DISABLE_PROMPT=1
VENV="\$(virtualenv_info)";


# Prompt Customize
PS1="\n \[\033[0;34m\]┌──(\[\033[1;36m\]\w\[\033[0;34m\])${VENV}\n └> \[\033[1;31m\]\$ \[\033[0m\]";
#PS1="\n \[\033[0;34m\]┌───(\[\033[1;35m\]\u\[\033[0;34m\])───(\[\033[1;32m\]\w\[\033[0;34m\])${VENV}\n └> \[\033[1;36m\]\$ \[\033[0m\]";


# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"


# Aliases
alias ..='cd ..'
alias ls='lsd'
alias firefox='firefox-developer-edition'

# Git for dotfiles
alias dgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Colorize
alias grep='grep --color=auto'

# Some Flags
alias rm='rm -I'
alias du='du -sh'
alias youtube-dl='youtube-dl -i'

# youtube-dl -- Credit to Distro Tube
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "
