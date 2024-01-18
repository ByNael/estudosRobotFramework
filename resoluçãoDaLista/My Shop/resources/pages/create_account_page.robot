***Settings***
Resource        ../main.robot

***Variables***
&{create_account}
...     Label_Gender_Radio=(//label[@class="top"])[1]
...     Input_First_Name=//input[@id="customer_firstname"]
...     Input_Last_Name=//input[@id="customer_lastname"]
...     Input_Password=//input[@id="passwd"]
...     Select_Days=//select[@id="days"]
...     Select_Months=//select[@id="months"]
...     Select_Years=//select[@id="years"]
...     Option_Day_Birth=(//option[@value="9"])[1]
...     Option_Month_Birth=(//option[@value="5"])[2]
...     Option_Year_Birth=//option[@value="2002"]
...     Button_Submit_Account=//button[@id="submitAccount"]

***Keywords***
E seleciono o genero 
    Wait Until Element Is Visible       ${create_account.Label_Gender_Radio}        10s
    Click Element                       ${create_account.Label_Gender_Radio}

E preencho os campos de cadastro
    Wait Until Element Is Visible       ${create_account.Input_First_Name}      10s
    Input Text                          ${create_account.Input_First_Name}      ${credenciais.First_Name}
    Wait Until Element Is Visible       ${create_account.Input_Last_Name}      10s
    Input Text                          ${create_account.Input_Last_Name}      ${credenciais.Last_Name}
    Wait Until Element Is Visible       ${create_account.Input_Password}      10s
    Input Text                          ${create_account.Input_Password}      ${credenciais.Password}

E adiciono a data de nascimento
    ### day of birth ###
    Wait Until Page Contains            ${create_account.Select_Days}        10s
    Click Element                       ${create_account.Select_Days}
    Wait Until Element Is Visible       ${create_account.Option_Day_Birth}        10s
    Click Element                       ${create_account.Option_Day_Birth}
    Click Element                       ${create_account.Select_Days}
    ### month of birth ###
    Wait Until Page Contains            ${create_account.Select_Months}        10s
    Click Element                       ${create_account.Select_Months}
    Wait Until Element Is Visible       ${create_account.Option_Month_Birth}        10s
    Click Element                       ${create_account.Option_Month_Birth}
    Click Element                       ${create_account.Select_Months}
    ### Year of birth ###
    Wait Until Page Contains            ${create_account.Select_Years}        10s
    Click Element                       ${create_account.Select_Years}
    Wait Until Element Is Visible       ${create_account.Option_Year_Birth}        10s
    Click Element                       ${create_account.Option_Year_Birth}
    Click Element                       ${create_account.Select_Years}

E clico em registrar
    Wait Until Element Is Visible       ${create_account.Button_Submit_Account}     10s
    Click Element                       ${create_account.Button_Submit_Account}