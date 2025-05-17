#!/bin/bash

if [[ $# -ne 1 ]]; then 
    echo "Asegúrate de pasar el path a un directorio como argumento."
    exit 1
fi 

DIRECTORIO="$1"

if [[ ! -d "$DIRECTORIO" ]]; then 
    echo "El directorio '$DIRECTORIO' no existe."
    exit 1
fi 

TOTAL=$(ls -A "$DIRECTORIO" | wc -l)

echo $TOTAL