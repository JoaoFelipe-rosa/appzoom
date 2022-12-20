#!/bin/bash
echo "
                    °°°°°°°°°°°°°°°°°
                     Wifi Test start
                    °°°°°°°°°°°°°°°°°
"
nmcli -f SSID,BARS dev wifi

echo "
                    °°°°°°°°°°°°°°°°°°
                     Wifi Test finish
                    °°°°°°°°°°°°°°°°°°
"
sleep 1
