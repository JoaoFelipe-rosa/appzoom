#!/bin/bash

echo "
					=====================
					Stress Teste Iniciado
					=====================
"

stress-ng --cpu $CPU --io $IO --timeout $TIME

echo "
					========================
					Stress Teste Finalizados
					========================
"
sleep 1
