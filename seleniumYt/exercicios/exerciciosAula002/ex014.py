"""
faça um programa que dada a entrada de uma lista ele faça o cálculo
acumulativo da mesma

ex entrada: [1,2,3,4]
ex saida: [1,3,6,10]
"""

lista_usuario = []
acumulativo_lista = []
acumulado = 0
numero_lista = 0
resposta = ''

while resposta != 'nao':
    resposta = input("Deseja adicionar um numero?(sim/nao) ")
    if resposta == 'sim':
            numero_lista = int(input('Qual o número escolhido? '))
            lista_usuario.append(numero_lista)

for numero in lista_usuario:
      acumulado += numero
      acumulativo_lista.append(acumulado)

print(f"Esta foi a lista de entrada: {lista_usuario}")
print(f"Esta é a lista acumulada: {acumulativo_lista}")
