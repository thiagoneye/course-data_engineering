#!/bin/bash

echo "1. inicializacao do script e verificacao do parametro de entrada, caso ele nao seja declarado o codigo nao executara"

if [ $# -ne 1 ]
then 
	exit 1
fi

echo "2. verificacao se o parametro de entrada e superior a 2"

if [ $1 -le 2 ]
then
	echo "nao sera necessario continuar o script"
	exit 0
fi

echo "3. atribuicao do parametro de entrada para a variavel ITER"

ITER=$1

echo "4. criacao dos arquivos iteracao-<numero-da-iteracao>.log contendo as saidas da funcao top"

for (( k=1; k<=$ITER; k++ )); do
	top -n $k  > iteracao-$k.log
done

echo "5. criacao dos diretorios backup_par e backup_impar"

# mkdir backup_par
# mkdir backup_impar

echo "6. copiando os arquivos para os diretorios criados"

for (( k=1; k<=$ITER; k++ )); do
	REST=`expr $k % 2`
	
	if [ $REST -eq 1 ]
	then
		cp iteracao-$k.log backup_impar/
	else
		cp iteracao-$k.log backup_par/
	fi
done

echo "7. unificando os arquivos"

tar -cfv backup_par_impar.tar backup_par backup_impar
