***Settings***
Resource        ../../resources/main.robot

***Test Cases***
TC01 - Criando um novo funcionario
    Dado que eu acesse o orangeHRM
    E faça o Login
    E clique em PIM
    E clique em Add Employee 
    E preenche os dados de cadastro
    E adicione foto do funcionario
    E clique em save
    Então o empregado é adicionado

TC02 - Excluindo este funcionario
    Dado que eu acesse o orangeHRM
    E faça o Login
    E clique em PIM
    E clique em Employee List
    E preenche o primeiro nome do empregado
    E clique em search
    E clique em Remove Employee
    E clique em Yes, Delete
    Então o empregado é excluido
    E feche o navegador