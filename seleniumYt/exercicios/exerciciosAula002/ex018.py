"""
faça um programa com função que dado uma lista
e uma posição da mesma faça o quartil dessa posição

p_index = int(p*len(lista))
"""
def quartil_posicao(lista, p):
    p_index = int(p * len(lista))
    
    sorted_lista = sorted(lista)
    
    quartil_value = sorted_lista[p_index]
    
    return quartil_value

minha_lista = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
posicao_quartil = 0.99

resultado = quartil_posicao(minha_lista, posicao_quartil)

print(f'O quartil na posição {posicao_quartil} é: {resultado}')