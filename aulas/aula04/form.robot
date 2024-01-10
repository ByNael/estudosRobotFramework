***Settings*** 
Library     SeleniumLibrary 


***Variables***
${input_firstName}      //input[@placeholder='First Name']
${input_lastName}       //input[@placeholder='Last Name']
${input_userEmail}      //input[@placeholder='name@example.com']
${button_radioGender}   //input[@value='Male']     
${input_userNumber}     //input[@placeholder='Mobile Number']
#${input_dateOfBirthInput}       id:dateOfBirthInput
#${input_subjectsContainer}      id:subjectsContainer
${textarea_currentAddress}     //textarea[@placeholder='Current Address']
${button_submit}        //button[@id='submit']

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
#Click Element      ${button_radioGender}      
#Sleep           1s
    Input Text      ${input_userNumber}     85982118611
    Sleep           1s
    Input Text      ${textarea_currentAddress}      62089634906209835
    Sleep           5s

    

clicar em submit
    Wait Until Page Contains Element        ${button_submit}
    Click Element       ${button_submit}

fechar navegador 
    Close Browser


***Test Cases***
Cenário 1: preencher formulario
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador