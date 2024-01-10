***Settings***
Library     SeleniumLibrary

***Variables***
${input_userName}       username
${input_password}       password
${button_login}         xpath://button[(text()=' Login ')]      


**Keywords***
abrir navegador e acessar o site
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome

preencher campos
    Wait Until Page Contains Element        ${input_userName}
    Input Text      ${input_userName}       Admin
    Sleep           2s
    Wait Until Page Contains Element        ${input_password}
    Input Text      ${input_password}       admin123
    Sleep           2s

clicar em login 
    Wait Until Page Contains Element        ${button_login}
    Click Element   ${button_login} 
    Sleep           5s  

acessar a opção PIM
    Click Element   ${button_pim}

fechar browser
    Close Browser

***Test Cases***
Cenário 1:
    abrir navegador e acessar o site
    preencher campos
    clicar em login 
    fechar browser
