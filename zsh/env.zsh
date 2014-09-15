### set PATH
PATH="/Users/alberto/.nvm/v0.10.30/bin"
PATH="$PATH:/Users/alberto/.rvm/bin"
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:/usr/texbin"
PATH="$PATH:/opt/X11/bin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/sbin"

export PATH

# If avalible, load nvm (Node Version Manager)
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

### Python

# Virtualenv Python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3 # Use default python

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

source /usr/local/bin/virtualenvwrapper.sh

