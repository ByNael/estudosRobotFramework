produto_01 = int(input("Qual o valor do primeiro produto? "))
produto_02 = int(input("Qual o valor do segundo produto? "))
produto_03 = int(input("Qual o valor do terceiro produto? "))

if produto_01 < produto_02 and produto_01 < produto_03:
    print("Escolha o produto 1")
elif produto_02 < produto_01 and produto_02 < produto_03:
    print("Escolha o produto 2")
else:
    print("Escolha o produto 3")