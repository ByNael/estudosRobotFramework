***Settings***
Resource        ../../elements/main_Elements.resource
Resource        ../../resource/settings.resource


***Keywords***
Dado que eu acesse o orangeHRM
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

E faça o Login
    Wait Until Element Is Visible  ${login.Input_Username}  10
    Input Text                     ${login.Input_Username}  ${Username}
    Wait Until Element Is Visible  ${login.Input_Password}  10
    Input Text                     ${login.Input_Password}  ${Password}
    Wait Until Element Is Visible  ${login.Button_Login}        10
    Click Element                  ${login.Button_Login} 
    Sleep       5s

E feche o navegador
    Close Browser