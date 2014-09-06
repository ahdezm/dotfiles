if [[ -e ~/sage/sage ]]; then
	alias sage=~/sage/sage
fi

# If ipython doesn't exist, alias to anaconda ipython 
if ! type ipython > /dev/null; then
	alias ipython='$HOME/anaconda/bin/ipython'
fi

# Force PATH to contain only unique elements
typeset -U path

conda_start(){
	# Add anaconda directory to PATH
	path=("$HOME/anaconda/bin" "$path[@]")
}

conda_stop(){
	# Remove anaconda direcotry from PATH
	path=("${(@)path:#$HOME/anaconda/bin}")
}