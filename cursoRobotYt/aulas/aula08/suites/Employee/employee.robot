***Settings***
Resource        ../../resources/main.robot
Test Setup      Acessar o site, logar e acessar o pim            #o setup são configurações feitas para que sempre que se inicie um teste, o robot execute todas aquelas configurações
Test Teardown   Fechar navegador                                 #configurações finaias pós teste

***Test Cases***
TC01 - Criando um novo funcionario
    [Tags]  TC01  Employee
    Dado que clique em Add Employee 
    Quando preenche os dados de cadastro
    E adicione foto do funcionario
    E clique em save
    Então o empregado é adicionado

TC02 - Excluindo este funcionario
    [Tags]  TC02  Employee
    Dado que clique em Employee List
    Quando preenche o primeiro nome do empregado
    E clique em search
    E clique em Remove Employee
    E clique em Yes, Delete
    Então o empregado é excluido