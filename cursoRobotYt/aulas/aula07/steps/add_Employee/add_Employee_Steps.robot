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

E preenche os dados de cadastro
    Wait Until Element Is Visible  ${PIM.Input_FirstName}       10
    Input Text                     ${PIM.Input_FirstName}       ${firstNameEmployee}
    Wait Until Element Is Visible  ${PIM.Input_MiddleName}      10
    Input Text                     ${PIM.Input_MiddleName}      ${middleNameEmployee}
    Wait Until Element Is Visible  ${PIM.Input_LastName}        10
    Input Text                     ${PIM.Input_LastName}        ${lastNameEmployee}

E clique em save
    Wait Until Element Is Visible  ${PIM.Button_Save}           10
    Click Element                  ${PIM.Button_Save} 
    Sleep                          10s