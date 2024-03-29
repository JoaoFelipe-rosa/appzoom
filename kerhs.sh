#!/bin/bash
#AppZoom
#19/12/2022
#João Felipe da Rosa
# kerhs.sh
# 10/02/2023
# kevinkirst

set -euo pipefail
	# 'set [+-]e' -> exits if any command has a non zero exit status
	# 'set [+-]u' -> exits if an undefined variable is referenced 
		# requires ':-' to be placed after unbound variables ('${1}' becomes '${1:-}')
	# 'set [+-]o pipefail' -> prevents error in a pipeline from being masked
IFS=$'\n\t'
	# Internal Field Separator -> set to 'new line' and 'tab'

#	dependencies
#	* memtester
#	* stress-ng
#	*
#	*
#	*

# changelog
#	v0.0 - 
#		 - 
#		 - 

# =-= FUNCTIONS =-= #
function finish {
	#clean-up code goes here
	exit 0
}
# =-= VARIABLES =-= #
source conf/kerhs.conf
	# how to extract values from .conf file
	# BLABLABLA=$(grep -e MEM_CAPACITY conf/kerhs.conf | cut -d "=" -f2)
	# echo BLABLABLA: ${BLABLABLA}
# =-= MAIN =-= #
trap finish exit
# vVv main script code vVv #
# validação da PI da maquina
# ${ERRLVL_SERIAL}=0 when ${SERIAL} is valid
while [[ ${ERRLVL_SERIAL} -ne 0 ]]; do
	source check/sn_check.sh
done

echo "PI completa: ${SERIAL}"
echo "Partnumber: ${SERIAL:0:8}"

echo "

      ================
      Testes Iniciados
      ================

"
#TESTE DE MEMORIAS 
    source test/mem_test.sh
#TESTE DE STRESS
    source test/stress_test.sh
#TESTE DE WIFI
    source test/wifi_test.sh

echo "

      ==================
      Testes Finalizados
      ==================
"
