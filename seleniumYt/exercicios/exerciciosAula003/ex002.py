"""
crie um programa com selenium que
    jogue o jogo
    quando voce ganhar o script deve parar de ser executado


    https://curso-python-selenium.netlify.app/exercicio_02.html
"""

from selenium.webdriver import Chrome
from selenium.webdriver.common.by import By
from time import sleep

url = 'https://curso-python-selenium.netlify.app/exercicio_02.html'

navegador = Chrome()

navegador.get(url)

sleep(3)

a = navegador.find_element(By.TAG_NAME,'a')
mensagem_ganhou = navegador.find_elements(By.TAG_NAME, 'p')

while mensagem_ganhou[-1].text != 'você está fazendo algo errado':
    a.click()

navegador.quit()





