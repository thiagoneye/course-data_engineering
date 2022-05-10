#!/bin/bash

echo "Inicio da Execucao"

echo "Armazenamento de Data e Hora"

DATE=$(date +"%Y-%m-%d")
HOUR=$(date +"%T")

echo "Criacao de Diretorio"

MY_DIRECTORY=/home/thiago/Documentos/GitLab/eng_dados/thiago/aula04/atividade05/script01

FOLDER="$MY_DIRECTORY/$DATE"

mkdir -p "$FOLDER"

echo "Criacao de Arquivos com Consumo de Processos"

ps -eo pmem,cmd | sort -k 1 -nr | head -5 > "$FOLDER/$DATE-$HOUR.log"

#crontab -e
#10 * * * * /bin/bash /home/thiago/Documentos/GitLab/eng_dados/thiago/aula04/atividade05/script01/consumo.sh >/dev/null 2>&1
