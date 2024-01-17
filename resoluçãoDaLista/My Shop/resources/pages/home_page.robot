***Settings***
Resource        ../main.robot

***Variables***
&{home_page}
...     Input_Search=//input[@id="search_query_top"]
...     Button_Search=//button[@name="submit_search"]

***Keywords***
Dado que acesse o site My Shop
    Open Browser        ${geral.URL}        ${geral.Browser}
    Maximize Browser Window

Dado que pesquiso uma roupa 
    Wait Until Element Is Visible       ${home_page.Input_Search}       10s
    Input TexT                          ${home_page.Input_Search}       ${pesquisa.Pesquisa}

Quando clique no botão pesquisar
    Wait Until Element Is Visible       ${home_page.Button_Search}      10s
    Click Element                       ${home_page.Button_Search}