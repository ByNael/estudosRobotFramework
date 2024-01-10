***Settings*** 
Library     SeleniumLibrary 
#serve no geral pra importar bibliotecas,outros arquivos robot alem de configurar o settup


***Variables***
${variavel1}    teste
${variavel2}    hhhh
${variavel3}    124153234
#serve no geral pra declarar variaveis 

***Keywords***
abrir site da google
    Open Browser    https://www.google.com.br/  chrome

fechar navegador
    Close Browser

abrir site da twitch
    Open Browser    https://www.twitch.tv/  chrome

#campo utilizado parar criar keywords personalizadas

***Test Cases***
Cenário 1: teste de abrir site google
    abrir site da google
    fechar navegador

Cenário 2: teste abrir site twitch
    abrir site da twitch