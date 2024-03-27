resposta = input('Vamos sair hoje[s/n]??')
n=1

while resposta != 's':
    resposta = input(f"Vamo{"o"*n} [s/n]")
    n+=1
    if 'chato' in resposta:
        print(f'Foi ma{'a'*n}l!!')
        break

print(f'então bor{'a'*n}a!!')