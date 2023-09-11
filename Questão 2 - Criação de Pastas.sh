#!/bin/bash

# Número de diretórios a serem criados
numero_diretorios=10

# Cria os diretórios
for i in $(seq 1 $numero_diretorios); do
    mkdir "Pasta_$i"
done