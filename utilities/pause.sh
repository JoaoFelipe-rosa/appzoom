#!/bin/bash
# author: kevinkirst
set -euo pipefail
	# 'set [+-]e' -> exits if any command has a non zero exit status
	# 'set [+-]u' -> exits if an undefined variable is referenced 
		# requires ':-' to be placed after unbound variables ('${1}' becomes '${1:-}')
	# 'set [+-]o pipefail' -> prevents error in a pipeline from being masked
IFS=$'\n\t'
	# Internal Field Separator -> set to 'new line' and 'tab'

# changelog
#	v1.0 - pauses the shell until any key is pressed
#		 - %1 parameter on call is the displayed message
#		 - if no parameter is passed on call, echoes default pause message
#		 - 

# =-= FUNCTIONS =-= #
function finish {
	#clean-up code goes here
	exit 0
}
# =-= VARIABLES =-= #
MESSAGE=${1:-"Pressione qualquer tecla para continuar..."}

# =-= MAIN =-= #
trap finish exit
# vVv main script code vVv
read -s -n 1 -p ${MESSAGE}