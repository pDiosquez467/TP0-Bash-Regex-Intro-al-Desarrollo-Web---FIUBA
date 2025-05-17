#!/bin/bash

# Función iterativa para calcular el término n-ésimo de Fibonacci.
# PRE: Recibe un número entero >= 0 como argumento.
# POST: Imprime el término n-ésimo de la secuencia de Fibonacci.
function fibo() {
    local n=$1 
    if [[ $n -le 1 ]]; then
        echo $n
        return
    fi
    
    local f0=0
    local f1=1
    local f
    
    for (( i=2; i <= n; i++ )); do  
        f=$(( f0 + f1 ))
        f0=$f1
        f1=$f
    done
    
    echo $f1 
}

NUM=$1

if [[ $# -ne 1 ]] || [[ ! $NUM =~ ^[0-9]+$ ]]; then 
    echo "Asegúrate de ingresar un número entero positivo como argumento"
    exit 1
fi 

POS=1

while true; do 
    f=$(fibo $(( POS-1 )))
    if [[ $f -gt $NUM ]]; then 
        echo "$POS"
        break 
    fi 
    POS=$(( POS + 1 ))
done