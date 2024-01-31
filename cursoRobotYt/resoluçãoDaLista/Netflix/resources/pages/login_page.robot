***Settings***
Resource        ../main.robot

***Variables***
&{login_Page}
...     Input_Senha=//input[@id="id_password"]
...     Button_Entrar=//button[text()="Entrar"]
...     Div_Error=//div[@id="error_message_userLoginId"]

***Keywords***
E insira a senha 
    Wait Until Element Is Visible       ${login_Page.Input_Senha}       10s
    Input Text                          ${login_Page.Input_Senha}       ${login.Password}

E clique no botão entrar login
    Wait Until Element Is Visible       ${login_Page.Button_Entrar}     10s
    Click Element                       ${login_Page.Button_Entrar}

Então é exprimida a mensagem de erro
    Wait Until Element Is Visible       ${login_Page.Div_Error}         10s
    Element Should Be Visible           ${login_Page.Div_Error}

Então feche o navegador
    Close Browser