#!/bin/bash

echo "Principais Consumos de Processos"

ps -eo pmem,cmd | sort -k 1 -nr | head -5 > processos.txt

echo "Armazenamento de Data e Hora"

DATE=$(date +"%Y-%m-%d")
HOUR=$(date +"%T")

echo "Criacao do arquivo final"

while read line; do
	SPLIT_LINE=($(IFS=" "; echo $line))
	
	MEMORY=${SPLIT_LINE[0]}
	PROCESS=${SPLIT_LINE[1]}

	echo "$DATE, $HOUR, $PROCESS, $MEMORY MD" >> consumo_de_memoria.txt
done < processos.txt

echo "Finalizacao da Execucao"

