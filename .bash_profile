# Load dotfiles
for file in ~/.{bash_prompt,aliases,inputrc,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# keep history up to date, across sessions, in realtime
export HISTCONTROL=ignoredups:erasedups         # no duplicate entries
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
which shopt > /dev/null && shopt -s histappend  # append to history, don't owerwrite it

# Save and reoad the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PATH="/usr/local/sbin:$PATH"

##
# Your previous /Users/dkelly/.bash_profile file was backed up as /Users/dkelly/.bash_profile.macports-saved_2016-05-18_at_16:25:40
##

# MacPorts Installer addition on 2016-05-18_at_16:25:40: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Added ssh keys to other boxes.
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    # ssh-agent bash # enable this if you'd like to have a ssh-keychain with multiple keys preloaded.
    # ssh-add ~/.ssh/keyname
    ssh-add ~/.ssh/id_*
fi
  
source ~/.gotoMaxedaAWS.sh # Everytime a terminal is opened this file will be sourced.
# ssh-agent bash # enable this if you'd like to have a ssh-keychain with multiple keys preloaded.
