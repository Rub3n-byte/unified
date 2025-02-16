#!/bin/bash

for ((i=0; i<${#ports[@]}; i+=2)); do
    echo "${ports[i]}:${ports[i+1]}"
done
