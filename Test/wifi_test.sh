#!/bin/bash

echo "
=========================
Iniciando Teste de WI-FI
=========================
"
nmcli -f SSID,BARS dev wifi

echo "
=========================
Teste de WI-FI concluido
=========================
"