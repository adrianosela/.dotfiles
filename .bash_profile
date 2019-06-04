# set up GOPATH
export GOPATH=$HOME/go

# set up Java Jar path (this is custom)
export JARPATH=$HOME/jars

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aaviles/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/aaviles/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aaviles/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/aaviles/Downloads/google-cloud-sdk/completion.bash.inc'; fi
