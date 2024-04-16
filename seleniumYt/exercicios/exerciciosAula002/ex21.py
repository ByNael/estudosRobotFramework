def eleva_numero(lista_numeros, numero_elevado):
    lista_resposta = []

    for numero in lista_numeros:
        lista_resposta.append(numero ** numero_elevado)

    return lista_resposta

lista_val = []

for valor in range(10):
    lista_val.append(
        int(input('Digite um número inteiro: '))
    )

dicionario = {
    'lista padrão': lista_val,
    'lista quadrada': [lista_val, 2],
    'lista cúbica': [lista_val, 3]
}

print(dicionario)