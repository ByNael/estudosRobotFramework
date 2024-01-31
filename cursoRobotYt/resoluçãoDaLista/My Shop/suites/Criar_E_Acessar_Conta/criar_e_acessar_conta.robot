***Settings***
Resource        ../../resources/main.robot
Test Setup      Quando abro o site My Shop
Test Teardown   Fechar navegador

***Test Cases***
TC01 - Criar nova conta
    Dado que clique em sign in
    Quando adiciono um email para criar conta
    E clico em create an account
    E seleciono o genero
    E preencho os campos de cadastro
    E adiciono a data de nascimento
    E clico em registrar
    Então a conta é criada

TC02 - Realizar login
    Dado que clique em sign in
    Quando preencho os campos de login
    E clico no botão sign in
    Então o login é efetuado