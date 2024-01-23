***Settings***
Resource            ../../resources/main.robot
Test Setup          Dado que acesse o site pelando
Test Teardown       Fechar navegador

***Test Cases***
TC01 - Acessar o site pelando e clicar na primeira promoção
    Dado que feche o alerta e aceite os cookies
    Quando clique na primeira promoção listada
    Então a pagina da promoção é aberta