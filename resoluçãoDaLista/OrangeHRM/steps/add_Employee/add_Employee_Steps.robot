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

E adicione foto do funcionario
    #Wait Until Element Is Visible  ${PIM.Input_EmployeeImage_File}      20
    Execute JavaScript             document.querySelector('.oxd-file-input').style.display = 'block';       #keyword usada para executar um codigo js que modifica o estilo do input que não era visivel
    Wait Until Element Is Visible  ${PIM.Input_EmployeeImage_File}      10s
    Choose File                    ${PIM.Input_EmployeeImage_File}      ${CURDIR}${/}${EmployeeImage}       #CURDIR é uma variavel default do tobot framework que quer dizer diretorio atual

E clique em save
    Wait Until Element Is Visible  ${PIM.Button_Save}           10
    Click Element                  ${PIM.Button_Save} 
    Sleep                          10s