#!/bin/bash
# ${ERRLVL_SERIAL}=0 -> valid ${SERIAL}
# ${ERRLVL_SERIAL}=1 -> invalid ${SERIAL}
PROBLEM=NOT_SET

read -r -p "insira o serial: " SERIAL
# check if ${SERIAL} is empty
if [[ -z ${SERIAL} ]]; then
		echo -e "\n"
# check if ${SERIAL} has 16 digits
elif [[ ${#SERIAL} -ne 16 ]]; then
	PROBLEM="serial number inválido - deve possuir 16 dígitos"
	echo ${PROBLEM} & echo -e "\n"
	ERRLVL_SERIAL=1
# check if first 2 digits of ${SERIAL} is "PI"
elif [[ "${SERIAL:0:2}" != "PI" ]]; then
	PROBLEM="serial number inválido - deve iniciar com 'PI'"
	echo ${PROBLEM} & echo -e "\n"
	ERRLVL_SERIAL=1
# if ${SERIAL} passes all tests, it's a valid string
else
	ERRLVL_SERIAL=0
fi