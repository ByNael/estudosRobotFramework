#faça um programa que dada uma lista [1,2,3,4,5,6,7,8,9,10] e um número inteiro, imprima a tabuada desse número

listaDeNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
resposta = int(input('Qual o numero? '))

for numero in listaDeNumeros:
    tabuada = numero * resposta
    print(f'{numero} x {resposta} = {tabuada}')