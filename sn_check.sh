#!/bin/bash

PROBLEM=NOT_SET
errlvl=0

read -r -p "insira o serial: " SERIAL

clear 

if [[ ${#SERIAL} == 16 ]]
    then
        echo ""
    else
        PROBLEM="deu ruim"
        errlvl=1
    fi

if [[ ${SERIAL:0:2} == PI ]]
    then
        echo ""
    else
        PROBLEM="deu ruim PI"
        errlvl=1
    fi