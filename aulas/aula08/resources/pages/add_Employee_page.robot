***Settings***
Resource        ../main.robot

***Variables***
&{addEmployee}
...     Input_FirstName=//input[@name="firstName"]
...     Input_MiddleName=//input[@name="middleName"]        
...     Input_LastName=//input[@name="lastName"]    
...     Input_EmployeeImage_File=//input[@class="oxd-file-input"]
...     Input_EmployeeId=(//input[@class="oxd-input oxd-input--active"])[2]
...     Button_Save=//button[text()=' Save ']   

***Keywords***
E preenche os dados de cadastro
    Wait Until Element Is Visible  ${addEmployee.Input_FirstName}       10
    Input Text                     ${addEmployee.Input_FirstName}       ${dados_Registro.firstNameEmployee}
    Wait Until Element Is Visible  ${addEmployee.Input_MiddleName}      10
    Input Text                     ${addEmployee.Input_MiddleName}      ${dados_Registro.middleNameEmployee}
    Wait Until Element Is Visible  ${addEmployee.Input_LastName}        10
    Input Text                     ${addEmployee.Input_LastName}        ${dados_Registro.lastNameEmployee}
    Wait Until Element Is Visible  ${addEmployee.Input_EmployeeId}      10
    Input Text                     ${addEmployee.Input_EmployeeId}      ${dados_Registro.EmployeeId}

E adicione foto do funcionario
    #Wait Until Element Is Visible  ${addEmployee.Input_EmployeeImage_File}      20
    Execute JavaScript             document.querySelector('.oxd-file-input').style.display = 'block'; 
    #keyword usada para executar um codigo js que modifica o estilo do input que não era visivel
    #Wait Until Element Is Visible  ${addEmployee.Input_EmployeeImage_File}      10s
    Choose File                    ${addEmployee.Input_EmployeeImage_File}      ${CURDIR}${/}${dados_Registro.EmployeeImage}       #CURDIR é uma variavel default do tobot framework que quer dizer diretorio atual

E clique em save
    Wait Until Element Is Visible  ${addEmployee.Button_Save}           10
    Click Element                  ${addEmployee.Button_Save} 
    Sleep                          10s

