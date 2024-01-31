***Settings***
Resource        ../main.robot

***Variables***
&{search_page}
...     A_Primeiro_Produto=(//a[@class="product_img_link"])[1]


***Keywords***
E clique no primeiro produto 
    Wait Until Element Is Visible       ${search_page.A_Primeiro_Produto}       10s
    Click Element                       ${search_page.A_Primeiro_Produto}