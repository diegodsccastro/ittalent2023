#!/bin/bash

# Função de adição
function adicionar() {
  # Lê os números a serem somados
  num1=$(read -p "Digite o primeiro número: ")
  num2=$(read -p "Digite o segundo número: ")

  # Realiza a soma
  soma=$(expr $num1 + $num2)

  # Imprime o resultado
  echo "$num1 + $num2 = $soma"
}

# Função de subtração
function subtrair() {
  # Lê os números a serem subtraídos
  num1=$(read -p "Digite o primeiro número: ")
  num2=$(read -p "Digite o segundo número: ")

  # Realiza a subtração
  subtracao=$(expr $num1 - $num2)

  # Imprime o resultado
  echo "$num1 - $num2 = $subtracao"
}

# Função de multiplicação
function multiplicar() {
  # Lê os números a serem multiplicados
  num1=$(read -p "Digite o primeiro número: ")
  num2=$(read -p "Digite o segundo número: ")

  # Realiza a multiplicação
  multiplicacao=$(expr $num1 \* $num2)

  # Imprime o resultado
  echo "$num1 * $num2 = $multiplicacao"
}

# Função de divisão
function dividir() {
  # Lê os números a serem divididos
  num1=$(read -p "Digite o primeiro número: ")
  num2=$(read -p "Digite o segundo número: ")

  # Realiza a divisão
  divisao=$(expr $num1 / $num2)

  # Imprime o resultado
  echo "$num1 / $num2 = $divisao"
}

# Menu principal
echo "Calculadora"
echo "1 - Adicionar"
echo "2 - Subtrair"
echo "3 - Multiplicar"
echo "4 - Dividir"
echo ""
echo "Opção: "

# Lê a opção do usuário
opcao=$(read -n1)

# Chama a função correspondente à opção escolhida
case $opcao in
  1) adicionar;;
  2) subtrair;;
  3) multiplicar;;
  4) dividir;;
  *) echo "Opção inválida";;
esac