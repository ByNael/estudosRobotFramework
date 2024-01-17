***Settings***
Resource        ../main.robot

***Variables***
&{search_page}
...     H3_Primeiro_Resultado=(//h3[@class="LC20lb MBeuO DKV0Md"])[1]
...     H3_Segundo_Resultado=(//h3[@class="LC20lb MBeuO DKV0Md"])[2]

***Keywords***
Quando clique no primeiro resultado
    Wait Until Element Is Visible       ${search_page.H3_Primeiro_Resultado}        10s
    Click Element                       ${search_page.H3_Segundo_Resultado}         

Quando clique no segundo resultado
    Wait Until Element Is Visible       ${search_page.H3_Segundo_Resultado}         10S
    Click Element                       ${search_page.H3_Segundo_Resultado}


