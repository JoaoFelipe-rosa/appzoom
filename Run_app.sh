#!/bin/bash
#AppZoom
#19/12/2022
#João Felipe da Rosa

# Setando Variaveis primarias
    # Parametros Mentest
        Mem_capacity=1MB
        Mem_lops=5
    
    # Parametros Stress test
        time=1s         #tempo de teste 
        cpu=5         #numero de cores
        io=4            #numero de threds
        #vm=2            #I don't know  
        #vm_byts=128M    #I don't know
        #fork=4          #I don't know
         
echo "
      ================
      Testes Iniciados
      ================
"
sleep 1

#TESTE DE MEMORIAS 
    shellcheck -x source /home/joao/appzoom/Test/men_test.sh

#TESTE DE STRESS
    shellcheck -x source /home/joao/appzoom/Test/stress_test.sh

#TESTE DE WIFI
    shellcheck -x source /home/joao/appzoom/Test/wifi_test.sh
s



echo "
    ==================
    Testes Finalizados
    ==================

      Precione Enter
"

read -r