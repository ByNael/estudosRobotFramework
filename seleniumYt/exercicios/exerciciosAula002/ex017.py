"""
faça um programa com função que calcula mediana de uma lista
funções que podem ajudar:
sorted(lista) ordena a lista
"""

def mediana(lista_mediana):
    ordenar = sorted(lista_mediana)
    if len(lista_mediana) % 2 == 0:
        mediana = (ordenar[len(ordenar) // 2 - 1] + ordenar[len(ordenar) // 2]) / 2
    else: 
        mediana = ordenar[len(ordenar)//2] 
    
    return mediana

resultado = mediana([1,2,4,6,2,4,9])
print(resultado)