#!/bin/bash
# ${ERRLVL_SERIAL}=0 -> valid ${SERIAL}
# ${ERRLVL_SERIAL}=1 -> invalid ${SERIAL}
PROBLEM=NOT_SET

read -r -p "insira o serial: " SERIAL 
# check if ${SERIAL} has 16 digits
if [[ ${#SERIAL} -ne 16 ]]; then
	PROBLEM="serial number inválido - deve possuir 16 dígitos"
	echo ${PROBLEM}
	ERRLVL_SERIAL=1
fi
# check if first 2 digits of ${SERIAL} is "PI"
if [[ "${SERIAL:0:2}" != "PI" ]]; then
	PROBLEM="serial number inválido"
	echo ${PROBLEM}
	ERRLVL_SERIAL=1
fi
# if ${SERIAL} passes all tests, it's a valid string
ERRLVL_SERIAL=0