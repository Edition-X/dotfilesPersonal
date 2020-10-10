#  _____    _
# |__  /___| |__  _ __ ___
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__
# /____|___/_| |_|_|  \___|

plugins=(virtualenv)
DEFAULT_USER=DKel37
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_internet_signal custom_battery_status_joined ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv  command_execution_time  status  time)
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{green}%F{black} \uf155 %f%F{green}%k\ue0b0%f "
POWERLEVEL9K_DIR_HOME_BACKGROUND='mediumpurple3'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='darkorange'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='blue'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep nomatch notify autopushd
unsetopt extendedglob
unsetopt HIST_VERIFY
#bindkey -e

#source /Users/dkelly/.fonts/*.sh
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle common-aliases
antigen bundle zsh_reload
#antigen bundle z
#antigen bundle andrewferrier/fzf-z
antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme steeef  # Similar to bash profile

antigen apply


#screenfetch
eval "$(fasd --init auto)"
export TERM=xterm-256color
export EDITOR=vim
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
## If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH:/Users/dan/Library/Python/3.8/bin


########################
##        Aliases     ##
########################
alias vim='nvim'
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias v='f -e nvim'


alias brew_update='brew -v update; brew upgrade --force-bottle; brew cleanup --prune -v; brew doctor -v'
alias zrc='source ~/.zshrc'
alias viz='vi ~/.zshrc'
alias d='dirs -v | head -10'
alias wq='clear'
alias mv='mv -v'
alias cp='cp -rv'
alias rm='rm -riv'
##
#### Git ##
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gr='git remote -v'
alias gp='git pull'
alias gu='git push'
#alias undopush='git push -f origin HEAD^:master'
#



### Terraform/Terragrunt ##
#alias tgg="terragrunt get -update"
#alias tgp="terragrunt plan"
#alias tga="terragrunt apply"
#alias tgd="terragrunt destroy"
#alias tgaa="terragrunt apply -auto-approve"
#alias tgda="terragrunt destroy -auto-approve"
#alias tfi="terraform init"
#alias tfp="terraform plan"
#alias tfa="terraform apply"
#alias tfaa="terraform apply -auto-approve"
#alias tfd="terraform destroy"
#alias tfda="terraform destroy -auto-approve"
#
#export PATH="/usr/local/opt/qt/bin:$PATH"
complete -C aws_completer aws

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
