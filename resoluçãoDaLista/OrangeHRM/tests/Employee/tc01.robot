***Settings***
Resource        ../../steps/main_Steps.robot

***Test Cases***
TC01 - Criando um novo funcionario
    Dado que eu acesse o orangeHRM
    E faça o Login
    E clique em PIM
    E clique em Add Employee 
    E preenche os dados de cadastro
    E adicione foto do funcionario
    E clique em save
    E feche o navegador