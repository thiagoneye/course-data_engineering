#!/bin/bash

SIZE=$(wc -l < "NOMES.TXT")

for ((k = 1 ; k <= ($SIZE+1) ; k++)); do
	NOME=$(sed -n $k'p' NOMES.TXT)
	DATA=$(sed -n $k'p' DATAS.TXT)
	
	echo "INSERT INTO FUNCIONARIO (NOME_FUNCIONARIO, DATA_ADMISSAO) VALUES ('$NOME', '$DATA');" >> injestao_de_dados.sql
done

