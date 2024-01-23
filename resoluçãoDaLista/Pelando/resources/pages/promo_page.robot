***Settings***
Resource        ../main.robot

***Variables***
&{promo_Page}
...     Span_Comentarios=(//span[text()="Comentários"])[1]

***Keywords***
Então a pagina da promoção é aberta
    Wait Until Element Is Visible       ${promo_Page.Span_Comentarios}      10s
    Element Should Be Visible           ${promo_Page.Span_Comentarios}

    