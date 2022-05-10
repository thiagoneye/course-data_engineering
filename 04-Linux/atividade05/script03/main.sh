#!/bin/bash

echo "iniciando a execucao"

echo "extraindo paises"

cat owid-covid-data.csv | awk -F, '{print $3}' | sort >> paises-afetados-covid.txt


