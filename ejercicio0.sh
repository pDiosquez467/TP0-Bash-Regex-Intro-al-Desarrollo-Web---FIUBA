#!/bin/bash

if [[ $# -ne 2 ]]; then 
    echo "Asegurate de ingresar la energía antigua y la adicional de Dendé como argumentos!"
    exit 1 
fi

ENERGIA_ANTIGUA=$1
ENERGIA_ADICIONAL=$2

if [[ ! $ENERGIA_ANTIGUA =~ ^[0-9]+$ ]]; then
    echo "La energía antigua de Dendé debe ser un número entero positivo."
    exit 1
fi

if [[ ! $ENERGIA_ADICIONAL =~ ^[0-9]+$ ]]; then
    echo "La energía adicional de Dendé debe ser un número entero positivo."
    exit 1
fi

echo $(( ENERGIA_ANTIGUA + ENERGIA_ADICIONAL ))