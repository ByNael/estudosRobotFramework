***Settings***
Resource        ../main.robot

***Variables***
&{home_Page}
...     A_Primeira_Promoção=(//a[@class="sc-labuuU cIsfvr"])[1]
...     A_Logo=//a[@class="sc-fSurle hSxhMs sc-8e0067-0 sc-db3e6fe4-3 hZvKnp eiVZVL"]
...     I_Alerta=//i[@class="sc-guDLey iWDixA sc-fHejqy dhGCwy"]
...     Btn_Cookies=//button[@class="sc-bZHSRq hKccpk sc-fc84bbc0-5 EdBXf"]

***Keywords***
Dado que feche o alerta e aceite os cookies
    Wait Until Element Is Visible       ${home_Page.I_Alerta}       10s
    Click Element                       ${home_Page.I_Alerta}
    Wait Until Element Is Visible       ${home_Page.Btn_Cookies}         10s
    Click Element                       ${home_Page.Btn_Cookies}
    
Quando clique na primeira promoção listada
    Wait Until Element Is Visible       ${home_Page.A_Primeira_Promoção}     10s
    Click Element                       ${home_Page.A_Primeira_Promoção}
