### set PATH
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH

# If avalible, load nvm (Node Version Manager)
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

### Python

# Virtualenv Python
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python" # Use default python
export WORKON_HOME=$HOME/envs

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

source /usr/local/bin/virtualenvwrapper.sh