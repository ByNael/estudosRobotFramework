resposta = input("você comprou pão?")

if resposta == sim:
    print('estou feliz')
elif resposta == nao:
    print('estou triste')
else:
    print('responda sim ou nao na proxima vez')
carteira = int(input("Quanto tenho na carteira: "))
tenis = int(input("Quanto custa o tênis? "))

if carteira>=tenis:
    print('compra o tênis')
else: 
    print("deixa pra dps")

