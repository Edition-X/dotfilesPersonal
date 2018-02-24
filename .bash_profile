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

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/sbin:$PATH"

# Added ssh keys to other boxes.
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    # ssh-agent bash # enable this if you'd like to have a ssh-keychain with multiple keys preloaded.
    # ssh-add ~/.ssh/keyname
    ssh-add ~/.ssh/id_rsa
fi
  
source ~/ansibleVaultPass.sh # Everytime a terminal is opened this file will be sourced.
# ssh-agent bash # enable this if you'd like to have a ssh-keychain with multiple keys preloaded.

# Removing to see if it affects anything
#export PATH=~/Library/Python/2.7/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dkelly/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/dkelly/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dkelly/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/dkelly/Downloads/google-cloud-sdk/completion.bash.inc'; fi
