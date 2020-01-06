# Install zplug if not already installed.
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug && \
        source ~/.zplug/init.zsh && \
        zplug update
else
    source ~/.zplug/init.zsh
fi

unsetopt nomatch  

# zplug Plugin Manager
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"

# Install zplug (If needed)
if ! zplug check --verbose; then
     zplug install
fi
## Load plugins
zplug load 

# mkvirtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

source "$HOME/.aliases"
