***Settings***
Resource        ../../resources/main.robot

***Test Cases***
TC01 - Verificando mensagem de erro email válido
    Dado que acesse o navegador
    E clique no botão fechar cookie
    Quando clique no botão entrar
    E insira a senha 
    E clique no botão entrar login
    Então é exprimida a mensagem de erro
    Então feche o navegador
