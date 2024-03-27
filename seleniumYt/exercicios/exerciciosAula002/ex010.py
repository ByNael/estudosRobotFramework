# faça um programa que leia 5 números e informe o maior número
numero_01 = int(input("digite o primeiro numero numero: "))
numero_02 = int(input("digite o segundo numero numero: "))
numero_03 = int(input("digite o terceiro numero numero: "))
numero_04 = int(input("digite o quarto numero numero: "))
numero_05 = int(input("digite o quinto numero numero: "))

contador = 0

if numero_01 > numero_02 and numero_01 > numero_03 and numero_01 > numero_04 and numero_01 > numero_05:
    print(f"o numero maior é: {numero_01}")
elif numero_02 > numero_01 and numero_02 > numero_03 and numero_02 > numero_04 and numero_02 > numero_05:
    print(f"o numero maior é: {numero_02}")
elif numero_03 > numero_01 and numero_03 > numero_02 and numero_03 > numero_04 and numero_03 > numero_05:
    print(f"o numero maior é: {numero_03}")
elif numero_04 > numero_01 and numero_04 > numero_02 and numero_04 > numero_03 and numero_04 > numero_05:
    print(f"o numero maior é: {numero_04}")
elif numero_05 > numero_01 and numero_05 > numero_02 and numero_05 > numero_04 and numero_05 > numero_03:
    print(f"o numero maior é: {numero_05}")
else:
    print('todos os número são iguais')