# Load dotfiles
for file in ~/.{bash_prompt,aliases,inputrc}; do
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

