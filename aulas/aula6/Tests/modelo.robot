** Settings **
Library  SeleniumLibrary

** Variables **
${url_robot}            https://robotframework.org/
${url_instagram}        https://www.instagram.com

${Browser}              chrome

** Keywords **
Abrir Site do Robot
    Open Browser        ${url_robot}        ${Browser}

Abrir site instagram
    Open Browser        ${url_instagram}        ${Browser}

Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Acessando o site do Robot
    Abrir Site do robot
    Fechar navegador

Cenário 2: Acessando site instagram
    [Tags]      regressivo       #testando tipo de execução com tags
    Abrir site instagram
    fechar navegador