***Settings***
Resource        ../main.robot

***Variables***
&{login}
#elementos da pagina de login
...     Input_Username=//input[@name="username"]
...     Input_Password=//input[@name="password"]
...     Button_Login=//button[text()=' Login ']

***Keywords***
Dado que eu acesse o orangeHRM
    Open Browser  ${geral.URL}  ${geral.Browser}
    Maximize Browser Window

E faça o Login
    Wait Until Element Is Visible  ${login.Input_Username}  10
    Input Text                     ${login.Input_Username}  ${dados_Registro.Username}
    Wait Until Element Is Visible  ${login.Input_Password}  10
    Input Text                     ${login.Input_Password}  ${dados_Registro.Password}
    Wait Until Element Is Visible  ${login.Button_Login}        10
    Click Element                  ${login.Button_Login} 
    Sleep       5s

E feche o navegador
    Close Browser