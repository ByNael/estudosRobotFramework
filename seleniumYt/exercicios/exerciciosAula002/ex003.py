#faça um programa para uma loja de tintas. O programa deverá pedir o tamanho em metros quadrados da área a ser pnitada.
#considere que a cobertura da tinta é de 1 litro para cada 3 metros quadrados e que a tinta é vendida em latas de 18
#litros, que custam R$80,00. informe ao usuário a quantidades de latas de tinta a serem compradas e o preço total.

area = int(input("qual o tamanho da area a ser pintada? "))
quantidade_de_tinta = area // 3 
latas_compradas= quantidade_de_tinta // 18
valor_compras= int(80*latas_compradas)

print(f"Você terá de comprar {latas_compradas} latas de tinta, no valor de R${valor_compras},00")