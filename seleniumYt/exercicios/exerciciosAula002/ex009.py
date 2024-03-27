# faça um programa que peça uma nota, entre zero e dez.
# mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe 
# um valor valido

nota = int(input("Dê uma nota de 0~10  "))
contador = 0

while nota < 0 or nota > 10:
    print("a nota deve ser de 0 a 10 e deve ser um número inteiro")
    nota = int(input("Dê uma nota de 0~10  "))
    contador+=1
    if contador > 5:
        print("excesso de tentativas, o programa deixara de ser executado")
        break

print(f"A nota {nota} é válida!! ")