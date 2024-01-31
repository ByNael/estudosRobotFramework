***Settings***
Resource        ../main.robot

***Keywords***
Dado que acesse o site swag labs
    Open Browser        ${geral.URL}      ${geral.Browser}
    Maximize Browser Window     
    Wait Until Element Is Visible   ${login_Page.Input_Btn_Login}     10s
    Element Should Be Visible       ${login_Page.Input_Btn_Login}

Fechar navegador
    Close Browser