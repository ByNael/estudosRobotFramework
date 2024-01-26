***Settings***
Resource        ../main.robot

***Variables***
&{login_Page}
...     Input_Username=//input[@id="user-name"]
...     Input_Password=//input[@id="password"]
...     Input_Btn_Login=//input[@id="login-button"]


***Keywords***
Dado que preenche os campos de login ${perfil}
    IF      "${perfil}"=="Standard"
        Wait Until Element Is Visible       ${login_Page.Input_Username}        10s
        Input Text                          ${login_Page.Input_Username}        ${login.Standard}
        Wait Until Element Is Visible       ${login_Page.Input_Password}        10s
        Input Text                          ${login_Page.Input_Password}        ${login.Password}
    ELSE IF     "${perfil}"=="Locked"
        Wait Until Element Is Visible       ${login_Page.Input_Username}        10s
        Input Text                          ${login_Page.Input_Username}        ${login.Locked}
        Wait Until Element Is Visible       ${login_Page.Input_Password}        10s
        Input Text                          ${login_Page.Input_Password}        ${login.Password}
    ELSE IF     "${perfil}"=="Problem"
        Wait Until Element Is Visible       ${login_Page.Input_Username}        10s
        Input Text                          ${login_Page.Input_Username}        ${login.Problem}
        Wait Until Element Is Visible       ${login_Page.Input_Password}        10s
        Input Text                          ${login_Page.Input_Password}        ${login.Password}
    ELSE IF     "${perfil}"=="Performance"
        Wait Until Element Is Visible       ${login_Page.Input_Username}        10s
        Input Text                          ${login_Page.Input_Username}        ${login.Performance}
        Wait Until Element Is Visible       ${login_Page.Input_Password}        10s
        Input Text                          ${login_Page.Input_Password}        ${login.Password}
    ELSE IF     "${perfil}"=="Error"
        Wait Until Element Is Visible       ${login_Page.Input_Username}        10s
        Input Text                          ${login_Page.Input_Username}        ${login.Error}
        Wait Until Element Is Visible       ${login_Page.Input_Password}        10s
        Input Text                          ${login_Page.Input_Password}        ${login.Password}
    ELSE IF     "${perfil}"=="Visual"
        Wait Until Element Is Visible       ${login_Page.Input_Username}        10s
        Input Text                          ${login_Page.Input_Username}        ${login.Visual}
        Wait Until Element Is Visible       ${login_Page.Input_Password}        10s
        Input Text                          ${login_Page.Input_Password}        ${login.Password}
    END

Quando clique no botão login
    Sleep                               10s
    Wait Until Element Is Visible       ${login_Page.Input_Btn_Login}     10s
    Click Element                       ${login_Page.Input_Btn_Login}