#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Asegurate de pasar el path del archivo como argumento"
    exit 1
fi

ARCHIVO="$1"

if [[ ! -f "$ARCHIVO" ]]; then
    echo "ERROR: El archivo '$ARCHIVO' no existe."
    exit 1
fi

LINEAS_CON_NUMEROS=$(grep -c '[0-9]' "$ARCHIVO")

echo $LINEAS_CON_NUMEROS