# faça um programa que receba uma data de nascimento (15/07/87) e imprima
# 'você nasceu no dia <dia> de <mês> de <ano>'

resposta = input('Qual sua data de nascimento?')
dia, mes, ano = resposta.split('/')

print(f'Você nasceu em {dia}, {mes} de {ano}')