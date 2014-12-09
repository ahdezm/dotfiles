# If ipython doesn't exist, alias to anaconda ipython 
if ! type ipython > /dev/null; then
	alias ipython='$HOME/anaconda/bin/ipython'
fi

# Force PATH to contain only unique elements
typeset -U path

conda_start(){
	if ! type conda > /dev/null; then
		# Add anaconda directory to PATH
		path=("$HOME/anaconda/bin" "$path[@]")		
		PRE_CONDA_PROMPT=$PROMPT
		export PROMPT="(conda)$PROMPT"
	fi
}

conda_stop(){
	if type conda > /dev/null; then
		# Remove anaconda direcotry from PATH
		path=("${(@)path:#$HOME/anaconda/bin}")
		export PROMPT=$PRE_CONDA_PROMPT
		unset PRE_CONDA_PROMPT
	fi
}