### set PATH

export PATH

# If avalible, load nvm (Node Version Manager)
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

### Python

# Virtualenv Python

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

source /usr/local/bin/virtualenvwrapper.sh

