*** Settings ***
Resource  ../main.robot

*** Variables ***
&{new_employee}
...  Input_FirstName=//input[@name="firstName"]
...  Input_MiddleName=//input[@name="middleName"]  
...  Input_LastName=//input[@name="lastName"] 
...  Photo_Input=//input[@class="oxd-file-input"]
...  Btn_Save=//button[text()=' Save ']  
...  Title_Registred_Employee=//h6[text()="Personal Details"]

*** Keywords ***
Então adiciono ${Quantidade} novos usuários
    FOR  ${i}  IN RANGE  ${Quantidade}
        Wait Until Element Is Visible  ${new_employee.Input_FirstName}
        Input Text  ${new_employee.Input_FirstName}  ${employee.First_Name} ${i}
        Input Text  ${new_employee.Input_MiddleName}  ${employee.Middle_Name} 
        Input Text  ${new_employee.Input_LastName}  ${employee.Last_Name}
        Choose File  ${new_employee.Photo_Input}  ${employee.Profile_Photo}  
        Click Element  ${new_employee.Btn_Save} 
        Wait Until Element Is Visible  ${new_employee.Title_Registred_Employee}     10s
        Element Should Be Visible      ${new_employee.Title_Registred_Employee}
        E clico em "Add Employee"
    END 

          