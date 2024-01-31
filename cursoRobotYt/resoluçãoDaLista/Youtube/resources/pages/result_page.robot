***Settings***
Resource        ../main.robot

***Variables***
&{result_Page}
...     Btn_Skip=//button[@class="ytp-ad-skip-button-modern ytp-button"]
...     Btn_Share=//button[@class="yt-spec-button-shape-next yt-spec-button-shape-next--tonal yt-spec-button-shape-next--mono yt-spec-button-shape-next--size-m yt-spec-button-shape-next--icon-leading"]
...     Btn_No_Thanks=//button[@class="yt-spec-button-shape-next yt-spec-button-shape-next--text yt-spec-button-shape-next--mono yt-spec-button-shape-next--size-m"]

***Keywords***
E pule a propaganda
    Wait Until Element Is Visible       ${result_Page.Btn_Skip}     20s
    Click Element                       ${result_Page.Btn_Skip}

E feche a notificação
    Wait Until Element Is Visible       ${result_Page.Btn_No_Thanks}     10s
    Click Element                       ${result_Page.Btn_No_Thanks}

Então o video é acessado
    Wait Until Element Is Visible       ${result_Page.Btn_Share}    10s
    Element Should Be Visible           ${result_Page.Btn_Share}