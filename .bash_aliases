# change format of prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\H: [\W] $ \[$(tput sgr0)\]"

# change color of folders in list view
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#############
## Aliases ##
#############

# alias for having a detatched working director for dotfiles version control
alias dot='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'

# alias for jupyter notebook
alias nb="jupyter notebook"

# alias for clearing the terminal
alias c="clear"

# alias for ls
alias ll="ls -halF"

# some directory aliases
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

# alias for exiting
alias e="exit"

# alias for python
alias py="python"

# alias for ipython
alias ipy="ipython"

# alias for tensorboard
alias tb="tensorboard --logdir "

# aliases for cloud instances 
alias gls="gcloud compute instances list"

alias m0="gcloud compute ssh machine-zero"
alias m0on="gcloud compute instances start machine-zero --async"
alias m0off="gcloud compute instances stop machine-zero --async"

alias m1="gcloud compute ssh machine-one --zone asia-east1-a"
alias m1on="gcloud compute instances start machine-one --zone asia-east1-a --async"
alias m1off="gcloud compute instances stop machine-one --zone asia-east1-a --async"

alias m2="ssh -i ~/.ssh/id_rsa -L 8888:localhost:8888 -L 6006:localhost:6006 ubuntu@35.160.7.206"
alias m2on="aws ec2 start-instances --instance-id=i-0c5fd957da5065fc6"
alias m2off="aws ec2 stop-instances --instance-id=i-0c5fd957da5065fc6"

# alias for conda activate
alias coa="conda activate"
alias cod="conda deactivate"

# Set terminal to vi mode
set -o vi

# if lazy exists, include in PATH
if [ -d ~/lazy_scripts ]; then
    export PATH=$PATH:~/lazy_scripts
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/sudosharma/google-cloud-sdk/path.bash.inc' ]; then . '/home/sudosharma/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/sudosharma/google-cloud-sdk/completion.bash.inc' ]; then . '/home/sudosharma/google-cloud-sdk/completion.bash.inc'; fi
