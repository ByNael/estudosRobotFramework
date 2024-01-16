***Settings***
Resource        ../main.robot

***Variables***
&{home}
...     A_PIM=//a[@href="/web/index.php/pim/viewPimModule"]

***Keywords***
E clique em PIM
    Wait Until Element Is Visible       ${home.A_PIM}       10
    Click Element                       ${home.A_PIM}