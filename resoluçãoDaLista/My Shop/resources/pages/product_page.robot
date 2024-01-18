***Settings***
Resource        ../main.robot

***Variables***
&{product_page}
...     A_Color=//a[@id="color_24"]
...     Span_Add_To_Cart=//span[text()="Add to cart"]
...     Span_Continue_Shopping=//span[@title="Continue shopping"]
...     Button_Prova=//button[@data-type="twitter"]

***Keywords***
E altere a cor
    Wait Until Element Is Visible       ${product_page.A_Color}      10s
    Click Element                       ${product_page.A_Color}

E clique em adicionar ao carrinho
    Wait Until Element Is Visible       ${product_page.Span_Add_To_Cart}        10s
    Click Element                       ${product_page.Span_Add_To_Cart}

E clique em continuar comprando
    Wait Until Element Is Visible       ${product_page.Span_Continue_Shopping}      10s
    Click Element                       ${product_page.Span_Continue_Shopping}

Então continuo na pagina do produto
    Wait Until Element Is Visible       ${product_page.Button_Prova}       10s
    Element Should Be Visible           ${product_page.Button_Prova}