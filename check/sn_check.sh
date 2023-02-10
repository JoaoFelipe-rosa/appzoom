#!/bin/bash
# ${ERRLVL_SERIAL}=0 -> valid ${SERIAL}
# ${ERRLVL_SERIAL}=1 -> invalid ${SERIAL}
# ${NUMERALS} -> integer interval imported from kerhs.conf
PROBLEM=NOT_SET

function error {
	echo ${PROBLEM}
	echo -n -e "\n"
	ERRLVL_SERIAL=1
}

read -r -p "insira o serial: " SERIAL
# check if ${SERIAL} is empty
if [[ -z ${SERIAL} ]]; then
	PROBLEM="serial number inválido - não deve ser vazio"
	error
# check if ${SERIAL} has 16 digits
elif [[ ${#SERIAL} -ne 16 ]]; then
	PROBLEM="serial number inválido - deve possuir 16 dígitos"
	error
# check if first 2 digits of ${SERIAL} is "PI"
elif [[ "${SERIAL:0:2}" != "PI" ]]; then
	PROBLEM="serial number inválido - deve iniciar com 'PI'"
	error
# check if final 14 digits of ${SERIAL} are numerical
elif ! [[ ${SERIAL:2} =~ ${NUMERALS} ]]; then
	PROBLEM="serial number inválido - deve conter 14 números"
	error
# if ${SERIAL} passes all tests, it's a valid string
else
	ERRLVL_SERIAL=0
fi