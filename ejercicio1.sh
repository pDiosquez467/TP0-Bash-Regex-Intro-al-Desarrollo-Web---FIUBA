#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "ERROR: Asegúrate de ingresar al menos un argumento que represente una cantidad de semillas del ermitaño."
    exit 1
fi

SEMILLAS=("$@")
TOTAL_SEMILLAS=0

for cant in "${SEMILLAS[@]}"; do
    if [[ ! $cant =~ ^[0-9]+$ ]]; then 
        echo "ERROR: Asegurate de ingresar una cantidad positiva de semillas del ermitaño!"
        echo "Parámetro inesperado: $cant"
        exit 1 
    fi

    TOTAL_SEMILLAS=$(( TOTAL_SEMILLAS + cant ))
done

echo $TOTAL_SEMILLAS
