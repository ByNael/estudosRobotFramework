***Settings***
Resource        ../main.robot

***Variables***
&{home_page}
...     Input_Search=//input[@id="search_query_top"]
...     Button_Search=//button[@name="submit_search"]
#...     A_Elemento=(//a[@href="http://www.automationpractice.pl/index.php?controller=order"])[1]
...     A_T_Shirts=//a[@title="T-shirts"]
...     A_Login=//a[@title="Log in to your customer account"]

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

#Dado que acesse a aba women
#    Wait Until Element Is Visible       ${home_page.A_Elemento}        10s
#    Execute JavaScript             document.querySelector('.oxd-file-input').style.display = 'block'; 
#    Press Keys                          ${home_page.A_Elemento}        TAB TAB TAB TAB TAB TAB TAB TAB


Dado que clique em T-Shirts
    Execute JavaScript             document.querySelector('.first-in-line-xs').style.display = 'block'; 
    Wait Until Element Is Visible       ${home_page.A_T_Shirts}          10s
    Click Element                       ${home_page.A_T_Shirts}

Dado que clique em sign in
    Wait Until Element Is Visible       ${home_page.A_Login}        10s
    Click Element                       ${home_page.A_Login}