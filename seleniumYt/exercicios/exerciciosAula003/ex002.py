"""
crie um programa com selenium que
    jogue o jogo
    quando voce ganhar o script deve parar de ser executado


    https://curso-python-selenium.netlify.app/exercicio_02.html
"""

from selenium.webdriver import Chrome
from selenium.webdriver.common.by import By
from time import sleep
import re

url = 'https://curso-python-selenium.netlify.app/exercicio_02.html'

navegador = Chrome()

navegador.get(url)

sleep(3)

a = navegador.find_element(By.TAG_NAME,'a')

elementos_p = navegador.find_elements(By.TAG_NAME, 'p')
texto_p = elementos_p[-1].text

numero_desejado = re.search(r'\d+', texto_p).group()

numero_desejado = int(numero_desejado)

while True:
    a.click()

    sleep(1)

    numero_sorteado = re.search(r'\d+', elementos_p[-1].text).group()
    numero_sorteado = int(numero_sorteado)
    
    if numero_sorteado == numero_desejado:
        break

navegador.quit()