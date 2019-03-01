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

# aliasses for gcloud
alias gls="gcloud compute instances list"
alias m0="gcloud compute ssh machine-zero"
alias m0on="gcloud compute instances start machine-zero --async"
alias m0off="gcloud compute instances stop machine-zero --async"

alias m1="gcloud compute ssh machine-one --zone asia-east1-a"
alias m1on="gcloud compute instances start machine-one --zone asia-east1-a --async"
alias m1off="gcloud compute instances stop machine-one --zone asia-east1-a --async"

# alias for conda activate
alias coa="conda activate"
alias cod="conda deactivate"

# Set terminal to vi mode
set -o vi
