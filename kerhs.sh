#!/bin/bash
#AppZoom
#19/12/2022
#João Felipe da Rosa
#

#       Dependencias
#   * mentestet
#   * stress-ng
#   *
#   *
#   *




#Validação da PI da maquina
source sn_check.sh

while [[ $errlvl -eq 1 ]]
    do
    clear
    source sn_check.sh 

done

echo "PI completa: ${SERIAL}"
echo "Partnumber: ${SERIAL:0:8}"


# Setando Variaveis primarias
    # Parametros Mentest
        Mem_capacity=1MB    #Capacidade da Memoria
        Mem_lops=5          #Numero de loops
    
    # Parametros Stress test
        time=1s          #tempo de teste 
        cpu=5            #numero de cores
        io=4             #numero de threds
         
echo "

      ================
      Testes Iniciados
      ================

"



#TESTE DE MEMORIAS 
    source test/men_test.sh

#TESTE DE STRESS
    source test/stress_test.sh

#TESTE DE WIFI
    source test/wifi_test.sh



echo "

      ==================
      Testes Finalizados
      ==================
"
