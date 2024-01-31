***Settings***
Resource        ../main.robot

***Variables***
&{home_Page}
...     A_Entrar=//a[text()="Entrar"]
...     Button_Cookie=//button[@id="cookie-disclosure-close"]

***Keywords***
Dado que acesse o navegador
    Open Browser        ${geral.URL}        ${geral.Browser}
    Maximize Browser Window

E clique no botão fechar cookie
    Wait Until Element Is Visible       ${home_Page.Button_Cookie}      10s
    Click Element                       ${home_Page.Button_Cookie}

Quando clique no botão entrar
    Wait Until Element Is Visible       ${home_Page.A_Entrar}       10s
    Click Element                       ${home_Page.A_Entrar}

