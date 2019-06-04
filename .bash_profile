# set up GOPATH
export GOPATH=$HOME/go

# add custom binary paths to PATH
PATH=$PATH:~/bin

# source personal secrets, funcs, and config
source ~/.secrets
source ~/.functions
source ~/.bashrc

# set up github color prompts
# must run "brew install bash-git-prompt" before this can work
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
