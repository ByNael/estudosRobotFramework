***Settings***
Resource        ../main.robot

***Variables***
&{home_Page}
...     A_Primeira_Promoção=(//a[@class="sc-labuuU cIsfvr"])[2]
...     A_Segunda_Promoção=(//a[@class="sc-labuuU cIsfvr"])[3]
...     A_Logo=//a[@class="sc-fSurle hSxhMs sc-8e0067-0 sc-db3e6fe4-3 hZvKnp eiVZVL"]

***Keywords***
Dado que clique na primeira promoção listada
    Wait Until Element Is Visible       ${home_Page.A_Primeira_Promoção}     10s
    Click Element                       ${home_Page.A_Primeira_Promoção}

Dado que clique na segunda promoção listada
    Wait Until Element Is Visible       ${home_Page.A_Segunda_Promoção}     10s
    Click Element                       ${home_Page.A_Segunda_Promoção}
