"""
faça um porgrama com uma função que calcule
a dispersão de uma lista 

funções embiutidas que podem ajudar

min(lista) retorna o menor valor
max(lista) retorna o maior valor
"""
def dispersao_func(lista):
    menor_valor=min(lista)
    maior_valor=max(lista)

    dispersao=maior_valor-menor_valor

    return dispersao

lista = [10,20,30,40,50]

resultado = dispersao_func(lista)

print(f'A dispersão da lista é: {resultado}')