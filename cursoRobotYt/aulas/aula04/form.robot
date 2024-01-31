***Settings*** 
Library     SeleniumLibrary 


***Variables***
${input_firstName}              //input[@placeholder='First Name']
${input_lastName}               //input[@placeholder='Last Name']
${input_userEmail}              //input[@placeholder='name@example.com']
${button_radioGender}           //label[@class="custom-control-label"] 
${input_userNumber}             //input[@placeholder='Mobile Number']

#variaveis para preencher o input de data de naschimento
${input_dateOfBirth}            //input[@id='dateOfBirthInput']
${select_monthOfBirth}          //select[@class="react-datepicker__month-select"]
${option_monthOfBirth}          //option[@value='4'] 
${select_yearOfBirth}           //select[@class="react-datepicker__year-select"]
${option_yearOfBirth}           //option[@value='2002']
${div_dayOfBith}                //div[text()='9']

${label_hobbies}                //label[text()='Sports']
${input_subjectsContainer}      //input[@id="subjectsInput"]
${span_autoCompleteSubjects}    //span[@class="subjects-auto-complete__indicator-separator css-1okebmr-indicatorSeparator"]
${textarea_currentAddress}      //textarea[@placeholder='Current Address']
${button_submit}                //button[@id='submit']

#xpath começa com "//" seguida do padrão de tag que buscamos
#em seguida dentro dos colchetes informamos um atributo especifico para buscar a tag
#ex //input[(placeholder()='Digite Aqui')]
***Keywords***
abrir navegador e acessar o site
    Open Browser    https://demoqa.com/automation-practice-form    chrome

preencher campos
    Input Text      ${input_firstName}      Natanael
    Sleep           1s
    Input Text      ${input_lastName}       Lino
    Sleep           1s
    Input Text      ${input_userEmail}      santoslino.natanael@gmail.com
    Sleep           1s
    Click Element   ${button_radioGender}      
    Sleep           1s
    Input Text      ${input_userNumber}     85982118611
    Sleep           1s
    Click Element   ${label_hobbies}
    Input Text      ${textarea_currentAddress}      62089634906209835
    Sleep           1s

preencher data de nascimento
    Wait Until Page Contains Element        ${input_dateOfBirth}
    Click Element                           ${input_dateOfBirth}
    Wait Until Page Contains Element        ${select_monthOfBirth}
    Click Element                           ${select_monthOfBirth}
    Wait Until Page Contains Element        ${option_monthOfBirth}
    Click Element                           ${option_monthOfBirth}
    Wait Until Page Contains Element        ${select_yearOfBirth}
    Click Element                           ${select_yearOfBirth}
    Wait Until Page Contains Element        ${option_yearOfBirth}
    Click Element                           ${option_yearOfBirth}
    Click Element                           ${select_yearOfBirth}
    Wait Until Page Contains Element        ${div_dayOfBith}
    Click Element                           ${div_dayOfBith}
    Sleep           10s


#preencher campo de subjects
    #Input Text      ${input_subjectsContainer}          Computer Science
    #Sleep           1s
    #Press Keys      ${span_autoCompleteSubjects}          \\13     #pessiona a tecla ENTER
    #Sleep           10s

    

clicar em submit
    Wait Until Page Contains Element        ${button_submit}
    Click Element                           ${button_submit}

fechar navegador 
    Close Browser


***Test Cases***
Cenário 1: preencher formulario
    abrir navegador e acessar o site
    preencher campos
    preencher data de nascimento
    fechar navegador