"""
Lojas Renner
CESAR School

Formação Encantech

Trilha de Engenharia de Dados

Thiago Rodrigues

Projeto Final
Gerador de Massa
"""

# Importações

import numpy as np
import random as rd

# Funções Auxiliares

def get_cpf() -> str:
    numeros = np.random.randint(0, high=10, size=9)
    cpf = [str(numero) for numero in numeros]
    cpf = ''.join(cpf)
    
    return cpf

def get_time() -> str:
    hora = rd.randint(0, 23)
    minuto = rd.randint(0, 59)
    
    if hora < 10:
        hora = '0' + str(hora)
    else:
        hora = str(hora)
    
    if minuto < 10:
        minuto = '0' + str(minuto)
    else:
        minuto = str(minuto)
    
    hora_minuto = hora + ':' + minuto
    
    return hora_minuto

# Execução

for idx in range(10000):
    print(get_cpf())
    print(get_time())
