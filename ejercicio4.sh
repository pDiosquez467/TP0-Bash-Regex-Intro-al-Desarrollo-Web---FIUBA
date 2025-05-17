#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Asegurate de ingresar el path a un archivo como argumento"
    exit 1
fi

ARCHIVO="$1"
PALABRA="cold"  

if [[ ! -e "$ARCHIVO" ]]; then
    echo "Error: '$ARCHIVO' no existe."
    exit 1
elif [[ -d "$ARCHIVO" ]]; then
    echo "Error: '$ARCHIVO' es un directorio."
    exit 1
fi

CONTADOR=$(grep -oi "$PALABRA" "$ARCHIVO" | wc -l)

echo "$CONTADOR"