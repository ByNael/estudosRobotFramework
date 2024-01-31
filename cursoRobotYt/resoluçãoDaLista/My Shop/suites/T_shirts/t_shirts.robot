***Settings***
Resource        ../../resources/main.robot
Test Setup      Quando abro o site My Shop
Test Teardown   Fechar navegador  

***Test Cases***
TC01 - Entrando no menu women e clicando em t-shirts
    Dado que clique em T-Shirts
    Então aguardo na pagina t-shirts