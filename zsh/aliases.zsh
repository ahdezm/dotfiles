if [[ -e ~/sage/sage ]]; then
	alias sage=~/sage/sage
fi

# If ipython doesn't exist, alias sagemath's internal version 
if ! type ipython > /dev/null; then
	alias ipython='sage -ipython'
fi