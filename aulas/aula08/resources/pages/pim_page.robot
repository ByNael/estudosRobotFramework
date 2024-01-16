***Settings***
Resource        ../main.robot

***Variables***
&{PIM}
...     A_AddEmployee=//a[text()='Add Employee']
...     A_EmployeeList=//a[text()='Employee List']                

***Keywords***
E clique em Add Employee
    Wait Until Element Is Visible       ${PIM.A_AddEmployee}       10
    Click Element                       ${PIM.A_AddEmployee}

E clique em Employee List
    Wait Until Element Is Visible       ${PIM.A_EmployeeList}       10
    Click Element                       ${PIM.A_EmployeeList}