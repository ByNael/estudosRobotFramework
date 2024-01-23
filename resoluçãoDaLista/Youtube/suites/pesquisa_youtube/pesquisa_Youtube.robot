***Settings***
Resource        ../../resources/main.robot
Test Setup      Dado que acesse o youtube
Test Teardown   Fechar navegador 

***Test Cases***
TC01 - Fazer uma pesquisa de musica no youtube e entrar no primeiro resultado
    Dado que digite uma pesquisa
    Quando clico no botão pesquisar
    E clique no primeiro resultado
    #E pule a propaganda
    #E feche a notificação
    Então o video é acessado