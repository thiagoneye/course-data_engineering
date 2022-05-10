#!/bin/bash

echo "criando thiago_log01.txt"

touch thiago_log01.txt

echo "criando thiago_log02.txt"

touch thiago_log02.txt

echo "inserindo dados em thiago_log01"

ls -lha > thiago_log01.txt

echo "inserindo dados em thiago_log02"

top -n 1 > thiago_log02.txt

echo "criando pasta thiago_backups_logs"

mkdir thiago_backups_logs

echo "copiando arquivos para a parta thiago_backups_logs"

cp thiago_log01.txt thiago_log02.txt thiago_backups_logs/

echo "fim da execucao"

