# Faça um programa que peça 2 números inteiros e um número float.
# O produto do dobro do primeiro com metade do segundo
# A soma do triplo do primeiro com o terceiro.
# O terceiro elevado ao cubo.

numero_01 = int(input('Escreve um numero ai'))
numero_02 = int(input('Escreve outro'))
numero_03 = float(input('agora um com virgula'))

x = (2*numero_01)*(numero_02/2)
y = (numero_01*3)+numero_03
z = numero_03**3

print(f'Expressão 1: {x},Expressão 2: {y},Expressão 3: {z} ')