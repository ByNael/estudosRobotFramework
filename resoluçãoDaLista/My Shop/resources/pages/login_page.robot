***Settings***
Resource        ../main.robot

***Variables***
&{login_page}
...     Input_Email_Create=//input[@id="email_create"]
...     Input_Email=//input[@id="email"]
...     Input_Password=//input[@id="passwd"]
...     Button_Submit_Create=//button[@id="SubmitCreate"]
...     Button_Submit_Login=//button[@id="SubmitLogin"]

***Keywords***
Quando adiciono um email para criar conta
    Wait Until Element Is Visible       ${login_page.Input_Email_Create}        10s
    Input Text                          ${login_page.Input_Email_Create}        ${credenciais.Email}

E clico em create an account
    Wait Until Element Is Visible       ${login_page.Button_Submit_Create}      10s
    Click Element                       ${login_page.Button_Submit_Create}

Quando preencho os campos de login
    Wait Until Element Is Visible       ${login_page.Input_Email}           10s
    Input Text                          ${login_page.Input_Email}           ${credenciais.Email}
    Wait Until Element Is Visible       ${login_page.Input_Password}        10s
    Input Text                          ${login_page.Input_Password}        ${credenciais.Password}

E clico em sign in
    Wait Until Element Is Visible       ${login_page.Button_Submit_Login}       10s
    Click Element                       ${login_page.Button_Submit_Login}
    