***Settings*** 
Library     SeleniumLibrary 


***Variables***
${input_firstName}      id:firstName
${input_lastName}       id:lastName
${input_userEmail}      id:userEmail
${button_radioGender}   id:gender-radio-1     #escolhe entre o genero(Male, Female ou Other)
${input_userNumber}     id:userNumber
#${input_dateOfBirthInput}       id:dateOfBirthInput
#${input_subjectsContainer}      id:subjectsContainer
${textarea_currentAddress}     id:currentAddress
${button_submit}        id:submit


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
    Click Element      ${button_radioGender}      
    Sleep           1s
    Input Text      ${input_userNumber}     85982118611
    Sleep           1s
    Input Text      ${textarea_currentAddress}      62089634906209835
    Sleep           5s

    

clicar em submit
    Click Element       ${button_submit}

fechar navegador 
    Close Browser


***Test Cases***
Cenário 1: preencher formulario
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador