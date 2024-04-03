"""
faça um programa que dada a entrada de uma lista o programa calcule a combinatória de dois elementos e 
nos retorne as combinações em nova lista.

ex entrada: [1,2,3,4]
ex saida: [[1,2],[1,3][1,4][2,3][2,4][3,4]]
"""
lista_usuario = []
lista_combinatoria = []
combinacao = []
numero_lista = 0
resposta = ''

while resposta != 'nao':
    resposta = input("Deseja adicionar um numero?(sim/nao) ")
    if resposta == 'sim':
            numero_lista = int(input('Qual o número escolhido? '))
            lista_usuario.append(numero_lista)

for i in range(len(lista_usuario)):
    for j in range(i+1, len(lista_usuario)):
         lista_combinatoria.append([lista_usuario[i], lista_usuario[j]])

print(f"Combinações de dois elementos: {lista_combinatoria}")