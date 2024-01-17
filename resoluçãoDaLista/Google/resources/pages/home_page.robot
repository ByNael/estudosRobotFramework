***Settings***
Resource        ../main.robot

***Variables***
&{home_Page}
...     Textarea_Pesquisa=//textarea[@id="APjFqb"]
...     Span_Botão_Pesquisa=//span[@class="QCzoEc z1asCe MZy1Rb"]

***Keywords***
Quando abro o site do google
    Open Browser        ${geral.URL}        ${geral.Browser}
    Maximize Browser Window

Dado que faça uma pesquisa
    Wait Until Element Is Visible       ${home_Page.Textarea_Pesquisa}      10s
    Input Text                          ${home_Page.Textarea_Pesquisa}      ${pesquisa.Pesquisa}
    Press Keys                          ${home_Page.Textarea_Pesquisa}      ENTER 