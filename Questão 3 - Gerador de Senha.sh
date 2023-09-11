#!/bin/bash

# Pergunta ao usuário o tamanho da senha
tamanho_senha=$(read -p "Qual o tamanho da senha? ")

# Caracteres a serem usados na senha
caracteres="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

# Gera a senha
senha=""
for i in $(seq 1 $tamanho_senha); do
  senha+=$(echo $caracteres | tr -dc '[:alnum:]' | shuf -n 1)
done

# Imprime a senha
echo "Senha: $senha"