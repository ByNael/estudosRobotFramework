***Settings***
Resource        ../main.robot

***Keywords***
Dado que acesse o youtube
    Open Browser                        ${geral.URL}        ${geral.Browser}
    Maximize Browser Window
    Element Should Be Visible           ${home_Page.A_Logo}      10s
    
Fechar navegador
    Close Browser