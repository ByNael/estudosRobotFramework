#minhaListaDeCompras = ['sabão', 'sabonete', 'arroz', 10, [1, 2, 3]]

#for compra in minhaListaDeCompras:
#    print(compra)

listaDeCompras = []
resposta=''

while resposta != 'Acabou':
    resposta = input('o que temos que comprar?  ')
    if resposta != 'acabou':
            listaDeCompras.append(resposta)

print(listaDeCompras)
