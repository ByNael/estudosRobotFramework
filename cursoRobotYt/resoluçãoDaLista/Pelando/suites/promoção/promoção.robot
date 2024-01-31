***Settings***
Resource            ../../resources/main.robot
Test Setup          Dado que acesse o site pelando
Test Teardown       Fechar navegador

***Test Cases***
TC01 - Acessar o site pelando e clicar na primeira promoção
    Dado que clique na primeira promoção listada
    Então a pagina da promoção é aberta

TC02 - Acessar o site pelando, clicar na segunda promoção e clicar na opção de ir para a loja
    Dado que clique na segunda promoção listada
    Quando clique em ir pra loja