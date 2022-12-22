#!/bin/bash

echo "
                    =====================
                    Stress Teste Iniciado
                    =====================
"

stress-ng --cpu $cpu --io $io --timeout $time

echo "
                    ========================
                    Stress Teste Finalizados
                    ========================
"
sleep 1
