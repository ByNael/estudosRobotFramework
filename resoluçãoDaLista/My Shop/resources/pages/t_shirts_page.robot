***Settings***
Resource        ../main.robot

***Variables***
&{t_shirts}
...     Span_Prova=//span[@class="cat-name"]

***Keywords***
Então aguardo na pagina t-shirts
    Wait Until Element Is Visible       ${t_shirts.Span_Prova}      10s
    Element Should Be Visible           ${t_shirts.Span_Prova}