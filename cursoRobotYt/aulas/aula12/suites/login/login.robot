***Settings***
Resource        ../../resources/main.robot
Test Setup      Dado que acesse o site swag labs
Test Teardown   Fechar navegador

***Test Cases***
TC01 - Logando perfil 
    Dado que preenche os campos de login Performance
    Quando clique no botão login