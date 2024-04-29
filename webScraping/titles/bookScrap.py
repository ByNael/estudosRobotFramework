import pandas as pd

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

# A classe service é usada para iniciar uma instância do chrome webdriver
service = Service()

# wevdriver.ChromeOptions é usado para definir a preferência para o browser do Chrome
options = webdriver.ChromeOptions()

# Inicia-se a instância do chrome webdriver com as definicads 'options' e 'service'
driver = webdriver.Chrome(service=service, options=options)

url = 'https://books.toscrape.com/'

driver.get(url)

#54:94:2 passa o primeiro elemento, passa o ultimo e de quantos em quantos
titleElements = driver.find_elements(By.TAG_NAME, 'a')[54:94:2]

titleList = [title.get_attribute('title') for title in titleElements]

print(titleList)
