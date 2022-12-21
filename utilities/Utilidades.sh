#!/bin/bash


██████╗░░█████╗░░█████╗░██╗░░░██╗███╗░░░███╗███████╗███╗░░██╗████████╗░█████╗░  ██████╗░███████╗
██╔══██╗██╔══██╗██╔══██╗██║░░░██║████╗░████║██╔════╝████╗░██║╚══██╔══╝██╔══██╗  ██╔══██╗██╔════╝
██║░░██║██║░░██║██║░░╚═╝██║░░░██║██╔████╔██║█████╗░░██╔██╗██║░░░██║░░░██║░░██║  ██║░░██║█████╗░░
██║░░██║██║░░██║██║░░██╗██║░░░██║██║╚██╔╝██║██╔══╝░░██║╚████║░░░██║░░░██║░░██║  ██║░░██║██╔══╝░░
██████╔╝╚█████╔╝╚█████╔╝╚██████╔╝██║░╚═╝░██║███████╗██║░╚███║░░░██║░░░╚█████╔╝  ██████╔╝███████╗
╚═════╝░░╚════╝░░╚════╝░░╚═════╝░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░░╚════╝░  ╚═════╝░╚══════╝

░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗  ██╗░░░██╗████████╗███████╗██╗░██████╗
██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝  ██║░░░██║╚══██╔══╝██╔════╝██║██╔════╝
╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░  ██║░░░██║░░░██║░░░█████╗░░██║╚█████╗░
░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗  ██║░░░██║░░░██║░░░██╔══╝░░██║░╚═══██╗
██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝  ╚██████╔╝░░░██║░░░███████╗██║██████╔╝
╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░  ░╚═════╝░░░░╚═╝░░░╚══════╝╚═╝╚═════╝░

#--------------------------------------------------------------------------------
# Atualização do sistema com interface grafica
# testada 19/12/2022
  Senha=$(zenity --password)
  (
  	echo "($Senha)"| sudo su 
  echo "10" ; sleep 0.1
  echo "Updating sistem" ; sudo -S  apt-get update
  echo "20" ; sleep 0.1
  echo "upgrading sistem" ; sudo apt-get upgrade
  echo "50" ; sleep 0.1
  echo "Instaling memteste" ; sudo apt install memtester
  echo "100" ; sleep 0.1
  )| zenity --progress\
  	      --title="RODANDO"\
  		  --text="Atualizando e instalando programas"\
  		  --percentage=0\
  		  --auto-close;  		  
  zenity --info --title="Shrek Update" --text="Sistema Atualizado com sucesso"
#--------------------------------------------------------------------------------


#--------------------------------------------------------------------------------#
#Estrutura if e else
# testada 19/12/2022
echo "
Bem vindo a entrada do show
Qual a sua Idade?"

read IDADE

if [[ $IDADE -ge 17 ]]

   then
       echo "pode entrar"
       echo "esta aqui o seu ingresso"
   
   elif [[ $IDADE -ge 15 ]]
  
       then
           echo "Voce tem 15 mesmo ?"
           echo "entra ai!"
       else
           echo "Cade seus pais ?"
   fi
#--------------------------------------------------------------------------------


#--------------------------------------------------------------------------------#
#Software de testes antigo ver 0.01
# testada 19/12/2022
source update

echo "insira a PI:"
read -r pi


echo "
=========================

PI= $pi
Testes Iniciados
Inicio:
$(date +%d-%m-%y_%H:%M:%S)

=========================
">> ./Logs/"$pi".txt

#for i in 0 ;
#	do
#		echo "RODANDO"
#	done
echo "
=========================
Teste de Memoria Iniciado
=========================
"
testSize=0MB
iterations=0
memtester $testSize $iterations

echo "* APROVADO NO TESTE DE MEM�RIA *" >> ./Logs/"$pi".txt

echo "
=========================
Teste de Memoria completo
=========================
"
sleep 2
clear
echo "
=========================
Iniciando Stress Test
=========================
"
stress -c 3 -i 4 -m 2  -t 5s
stress-ng --cpu 8 --io 4 --vm 2 --vm-bytes 128M --fork 4 --timeout 10s
echo "* APROVADO NO TESTE DE STRESS *" >> ./Logs/"$pi".txt

echo "
=========================
Stress Test Comcluido
=========================
"
sleep 2
clear
echo "
=========================
Iniciando Teste de WI-FI
=========================
"
nmcli -f SSID,BARS dev wifi

echo "* APROVADO NO TESTE DE WI-FI *" >> ./Logs/"$pi".txt

echo "
=========================
Teste de WI-FI concluido
=========================
"
sleep 2
clear
echo "
=========================
PI= $pi 
Testes Finalizados
Final:   
$(date +%d-%m-%y_%H:%M:%S)
=========================
">> ./Logs/"$pi".txt

zenity --info --text="
Testes  da PI:$pi
    Concluidos 
"
#--------------------------------------------------------------------------------

#--------------------------------------------------------------------------------
#Estrutura IF com verificação de root

if [[ ${UID} -eq 0 ]]

    then
        echo "Você é root"
        echo "quer dizer sim?"
        echo "(s) para sim e (n) para não"
        read -r resposta
        
        if  [[ ${resposta} = "s" ]]
            then
                echo "SIM"
            else 
                echo "NÃO"
        fi
    else
        echo "Você não é root"
fi
#--------------------------------------------------------------------------------