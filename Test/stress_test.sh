#!/bin/bash

echo "
                    °°°°°°°°°°°°°°°°°
                    Stress test start
                    °°°°°°°°°°°°°°°°°
"



stress-ng --cpu $cpu --io $io --timeout $time

echo "
                    °°°°°°°°°°°°°°°°°°
                    Stress test finish
                    °°°°°°°°°°°°°°°°°°
"
sleep 1
