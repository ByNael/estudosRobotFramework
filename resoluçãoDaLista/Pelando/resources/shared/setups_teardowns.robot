***Settings***
Resource        ../main.robot

***Keywords***
Dado que acesse o site pelando
    Open Browser        ${geral.URL}        ${geral.Browser}
    Maximize Browser Window
    Wait Until Element Is Visible       ${home_Page.A_Logo}     10s
    Element Should Be Visible           ${home_Page.A_Logo}


Fechar navegador
    Close Browser
