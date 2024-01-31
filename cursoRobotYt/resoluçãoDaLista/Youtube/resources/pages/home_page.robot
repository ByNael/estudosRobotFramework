***Settings***
Resource        ../main.robot

***Variables***
&{home_Page}
...     Input_Search=//input[@id="search"]
...     Btn_Search=//button[@id="search-icon-legacy"]
...     A_Logo=(//a[@id="logo"])[1]

***Keywords***
Dado que digite uma pesquisa
    Wait Until Element Is Visible       ${home_Page.Input_Search}       10s
    Input Text                          ${home_Page.Input_Search}       ${search.Search}        

Quando clico no botão pesquisar
    Wait Until Element Is Visible       ${home_Page.Btn_Search}     10s
    Click Element                       ${home_Page.Btn_Search}
