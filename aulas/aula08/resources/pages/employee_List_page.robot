***Settings***
Resource        ../main.robot

***Variables***
&{employeeList}
...     Input_EmployeeName=(//input[@placeholder="Type for hints..."])[1]
...     Button_Search=//button[text()=' Search ']
...     Button_RemoveEmployee=(//button[@class='oxd-icon-button oxd-table-cell-action-space'])[1]
...     Button_Delete=//button[@class="oxd-button oxd-button--medium oxd-button--label-danger orangehrm-button-margin"]
...     Div_Prova=//div[text()='Severino Severo']

***Keywords***
E preenche o primeiro nome do empregado
    Wait Until Element Is Visible       ${employeeList.Input_EmployeeName}       10
    Input Text                          ${employeeList.Input_EmployeeName}       ${dados_Registro.firstNameEmployee}

E clique em search
    Wait Until Element Is Visible       ${employeeList.Button_Search}       10
    Click Element                       ${employeeList.Button_Search}

E clique em Remove Employee
    Wait Until Element Is Visible       ${employeeList.Button_RemoveEmployee}        10
    Click Element                       ${employeeList.Button_RemoveEmployee}

E clique em Yes, Delete
    Wait Until Element Is Visible       ${employeeList.Button_Delete}            10
    Click Element                       ${employeeList.Button_Delete}
    Sleep                               5s

Então o empregado é excluido
    Wait Until Element Is Visible  ${PIM.A_EmployeeList}        10
    Click Element                  ${PIM.A_EmployeeList}
    Sleep                          5s
    Element Should Not Be Visible  ${employeeList.Div_Prova}        10           #verifica se o empregrado foi excluido de fato

Então o empregado é adicionado
    Wait Until Element Is Visible  ${PIM.A_AddEmployee}         10
    Click Element                  ${PIM.A_AddEmployee}
    Wait Until Element Is Visible  ${PIM.A_EmployeeList}        10
    Click Element                  ${PIM.A_EmployeeList}
    Wait Until Element Is Visible  ${employeeList.Div_Prova}             10
    Element Should Be Visible      ${employeeList.Div_Prova}        10           #verifica se o empregado foi adicionado de fato