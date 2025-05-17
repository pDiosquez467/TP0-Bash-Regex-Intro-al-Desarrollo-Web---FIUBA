#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Asegurate de ingresar el path a un directorio como argumento"
    exit 1
fi

PATH_DIRECTORIO="$1"

if [[ ! -d "$PATH_DIRECTORIO" ]]; then
    echo "Error: '$PATH_DIRECTORIO' no es un directorio válido."
    exit 1
fi

CANTIDAD_ARCHIVOS_CON_KARIN=$(grep -rl "Karin" "$PATH_DIRECTORIO" | wc -l)

echo $CANTIDAD_ARCHIVOS_CON_KARIN