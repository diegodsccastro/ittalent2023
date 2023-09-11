#!/bin/bash

# Arquivo de texto a ser analisado
arquivo=$1

# Conta o número de palavras no arquivo
numero_de_palavras=$(wc -w < $arquivo)

# Imprime o resultado
echo "Número de palavras: $numero_de_palavras"