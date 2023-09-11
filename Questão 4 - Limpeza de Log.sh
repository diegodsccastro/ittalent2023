#!/bin/bash

# Diretório a ser pesquisado
diretorio="/var/log"

# Extensão dos arquivos a serem removidos
extensao=".log"

# Tempo em dias a partir do qual os arquivos serão removidos
tempo=7

# Encontra todos os arquivos do tipo .log no diretório especificado
arquivos=$(find $diretorio -type f -name "*.log" -mtime +$tempo)

# Remove todos os arquivos encontrados
for arquivo in $arquivos; do
  echo "Removendo arquivo $arquivo..."
  rm -f $arquivo
done