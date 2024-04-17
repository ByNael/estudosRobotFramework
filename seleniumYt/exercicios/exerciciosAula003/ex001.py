"""
Crie um programa com selenium que 

gere um dicionário, onde a chave é a tag h1
    o valor deve ser um novo dicionario
    cada chave do valor devera ser o valor do 'atributo'
    cada valor deve ser o texto contigo no elemento

    https://curso-python-selenium.netlify.app/exercicio_01.html
"""

from selenium.webdriver import Chrome
from selenium.webdriver.common.by import By
from time import sleep

url = 'https://curso-python-selenium.netlify.app/exercicio_01.html'

navegador = Chrome()

navegador.get(url)

sleep(3)

h1 = navegador.find_element(By.TAG_NAME,'h1')
p_elementos = navegador.find_elements(By.TAG_NAME, 'p')

dic = {'h1': {
    'texto1': p_elementos[0].text,
    'texto2': p_elementos[1].text,
    'texto3': p_elementos[2].text
}}


print(p_elementos[0].name)

navegador.quit()