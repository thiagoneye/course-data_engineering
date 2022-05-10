#!/bin/bash

echo "inicio da execucao"

echo "definindo link para download"

LINK='https://github.com/owid/covid-19-data/archive/refs/heads/master.zip'

echo "download dos arquivos"

# wget $LINK -O "download"

echo "extraindo arquivos"

# unzip "download" -d "dados_extraidos"

echo "copiando arquivos"

DIRECTORY_FILES=$(pwd)"/dados_extraidos/covid-19-data-master/public/data"

cp $DIRECTORY_FILES"/owid-covid-codebook.csv" $DIRECTORY_FILES"/owid-covid-data.csv" $(pwd)

