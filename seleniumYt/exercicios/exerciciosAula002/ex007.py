# faça um programa que receba um string e responda
# se ela tem alguma vogal, se sim quais são?
# e também diga se ela é uma frase ou não

string = input('Escreva aqui sua palava ou frase: ')

vogais = set('aeiou')
vogais_presentes = vogais.intersection(string.lower())

if vogais_presentes:
    print("A string contém vogais:", ', '.join(vogais_presentes))
else:
    print("A string não contém vogais.")

if string.strip()[-1] in ['.', '!', '?']:
    print("A string é uma frase.")
else:
    print("A string não é uma frase.")

print(vogais)
print(string.split())
#if string.split(',') == vogais:
#    print('contem vogais')

