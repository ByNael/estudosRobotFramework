"""
faça um programa que receba uma string, com um número
de ponto flutante, e imprima qual a parte dele que
não é inteira
"""

numero = input("escreva um número fracionado: ")

parteFracionada=""
for posicao in numero:
    if posicao == '.':
        parteFracionada = numero[numero.index('.')+1:]
        break

if parteFracionada:
    print("A parte fracionaria é: ", parteFracionada)
else: 
    print("não há parte fracionária neste número")
