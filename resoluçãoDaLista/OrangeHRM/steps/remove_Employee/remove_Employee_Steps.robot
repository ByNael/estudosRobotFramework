***Settings***
Resource        ../../elements/main_Elements.resource
Resource        ../../resource/settings.resource


***Keywords***
E clique em Employee List
    Wait Until Element Is Visible       ${PIM.A_EmployeeList}       10
    Click Element                       ${PIM.A_EmployeeList}

E preenche o primeiro nome do empregado
    Wait Until Element Is Visible       ${PIM.Input_EmployeeName}       10
    Input Text                          ${PIM.Input_EmployeeName}       ${firstNameEmployee}

E clique em search
    Wait Until Element Is Visible       ${PIM.Button_Search}       10
    Click Element                       ${PIM.Button_Search}

E clique em Remove Employee
    Wait Until Element Is Visible       ${PIM.Button_RemoveEmployee}        10
    Click Element                       ${PIM.Button_RemoveEmployee}

E clique em Yes, Delete
    Wait Until Element Is Visible       ${PIM.Button_Delete}            10
    Click Element                       ${PIM.Button_Delete}
    Sleep                               5s

Então o empregado é excluido
    Wait Until Element Is Visible  ${PIM.A_EmployeeList}        10
    Click Element                  ${PIM.A_EmployeeList}
    Element Should Not Be Visible  ${PIM.Div_Prova}        10           #verifica se o empregrado foi excluido de fato

