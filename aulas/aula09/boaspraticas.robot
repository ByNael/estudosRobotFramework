***Settings***


***Variables***


***Keywords***
### boa pratica 2,3,4 ###
Clicar no elemento
    Wait Until Element Is Visible       //button[@id="btnTeste"]        10s     #por padrão é 5s
    #Sleep       10s
    Click Element       //button[@id="btnTeste"]

***Test Cases***
TC01 - Teste 1
    ### boa pratica 1 ####
    ### Errado ###
    #Open Browser        URL     Browser
    #Close Browser

    ### Certo ###
    Abrir navegador e acessar o site
    fechar navegador