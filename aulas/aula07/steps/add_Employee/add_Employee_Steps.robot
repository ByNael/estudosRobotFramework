***Settings***
Resource        ../../elements/main_Elements.resource
Resource        ../../resource/settings.resource


***Keywords***
E clique em PIM
    Wait Until Element Is Visible       ${home.A_PIM}       10
    Click Element                       ${home.A_PIM}

E clique em Add Employee
    Wait Until Element Is Visible       ${PIM.A_addEmployee}       10
    Click Element                       ${PIM.A_addEmployee}
    Sleep       5s