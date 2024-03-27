# faça um programa que receba um string e responda
# se ela tem alguma vogal, se sim quais são?
# e também diga se ela é uma frase ou não

string = input('Escreva aqui sua palava ou frase: ')
vogais = 'aeiouAEIOU'

for letra in string:
    if letra in vogais:
        print(f"a vogal '{letra}' esta presente") 
    else:
        print('A palavra que você escreveu não tem vogais') 
