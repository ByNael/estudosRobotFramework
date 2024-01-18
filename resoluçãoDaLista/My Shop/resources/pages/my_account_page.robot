***Settings***
Resource        ../main.robot

***Variables***
&{my_account}
...     H1_Prova=//h1[text()="My account"]


***Keywords***
Então a conta é criada
    Wait Until Element Is Visible       ${my_account.H1_Prova}              10s
    Element Should Be Visible           ${my_account.H1_Prova}

Então o login é efetuado
    Wait Until Element Is Visible       ${my_account.H1_Prova}              10s
    Element Should Be Visible           ${my_account.H1_Prova}