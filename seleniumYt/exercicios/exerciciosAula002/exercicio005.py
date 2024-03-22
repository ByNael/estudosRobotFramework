# programa que lê duas notas faz a media e imprime se o 
# aluno foi aprovado ou não
nota_01= int(input("Qual a primeira nota? "))
nota_02= int(input("Qual a segunda nota? "))

media = nota_01/nota_02

if media == 10:
    print("Aprvoado com distinção")
elif media >= 7:
    print("aprovado")
else:
    print("reprovado")