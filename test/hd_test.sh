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

# =-= MAIN =-= #
trap finish exit
# vVv main script co
	DISK=$(smartctl --scan)
	DISK=${DISK:0:8}

#=-=-=-Check disk informations=-=-=-#
	HDD_MODEL=$(sudo smartctl -i ${DISK} | grep -e Model | cut -d ":" -f2 | xargs)
	HDD_FIRMWARE=$(sudo smartctl -i ${DISK} | grep -e Firmware | cut -d ":" -f2 | xargs)
	HDD_SERIAL=$(sudo smartctl -i ${DISK} | grep -e Serial | cut -d ":" -f2 | xargs )
	HDD_CAPACITY=$(sudo smartctl -i ${DISK} | grep -e Capacity | cut -d "[" -f2 | cut -d "]" -f1)
	HDD_SMART_RESULT=$(sudo smartctl -H ${DISK} | grep -e result | cut -d ":" -f2 | xargs) 
echo "
		#=-=-=-Iniciando HD Test =-=-=-#
"
echo "
 		Modelo: ${HDD_MODEL}
 		Firmware: ${HDD_FIRMWARE}
		Numero de Serie: ${HDD_SERIAL} 
 		Capacidade: ${HDD_CAPACITY}
		Status Smart Teste: ${HDD_SMART_RESULT} 
 	"

# #=-=-=-Performs the hd test=-=-=-#
	sudo hdparm -tT ${DISK};
  	sudo hdparm -t --direct ${DISK}
  	sudo badblocks -v ${DISK} #Gera o log =>| tee -a $log_file

echo "
		#=-=-=-HD Test Finalizado =-=-=-#
"