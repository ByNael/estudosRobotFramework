***Settings***
Resource        ../main.robot

***Variables***
&{promo_Page}
...     Span_Comentarios=(//span[text()="Comentários"])[1]
...     Span_Ir_Pra_Loja=(//span[text()="Ir pra Loja"])[1]

***Keywords***
Então a pagina da promoção é aberta
    Wait Until Element Is Visible       ${promo_Page.Span_Comentarios}      10s
    Element Should Be Visible           ${promo_Page.Span_Comentarios}

Quando clique em ir pra loja
    Wait Until Element Is Visible       ${promo_Page.Span_Ir_Pra_Loja}      10s
    Click Element                       ${promo_Page.Span_Ir_Pra_Loja}

    