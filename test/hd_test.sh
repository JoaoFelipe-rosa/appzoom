#!/bin/bash
set -euo pipefail
	# 'set [+-]e' -> exits if any command has a non zero exit status
	# 'set [+-]u' -> exits if an undefined variable is referenced 
		# requires ':-' to be placed after unbound variables ('${1}' becomes '${1:-}')
	# 'set [+-]o pipefail' -> prevents error in a pipeline from being masked
IFS=$'\n\t'
	# Internal Field Separator -> set to 'new line' and 'tab'

# changelog
#	v1.0 - 
#		 - 

# =-= FUNCTIONS =-= #
function finish {
	#clean-up code goes here
	exit 0
}
# =-= VARIABLES =-= #
HI="sup"
            
# =-= MAIN =-= #
trap finish exit
# vVv main script co
	DISK=$(smartctl --scan)
	DISK=${DISK:0:8}


#Check disk informations
	sudo smartctl -i ${DISK} | grep -e Model | cut -d ":" -f2 | xargs
	sudo smartctl -i ${DISK} | grep -e Capacity | cut -d ":" -f2 | cut -d "s" -f2 | xargs
	sudo smartctl -i ${DISK} | grep -e sata | cut -d ":" -f2 | xargs
#hdparm -t