***Settings***
Library     SeleniumLibrary
Library     FakerLibrary


***Variables***
${URL}      https://demoqa.com/automation-practice-form
${Browser}      chrome

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
Dado que acesse o formulario
    Open Browser        ${URL}      ${Browser}

Então o formulario deve ser preenchido
    Wait Until Element Is Visible       ${input_firstName}      10s
    ${nome}     FakerLibrary.FirstName
    Input Text      ${input_firstName}      ${nome}
    ${sobrenome}    FakerLibrary.LastName
    Input Text      ${input_lastName}      ${sobrenome}
    ${email}        FakerLibrary.FreeEmail
    Input Text      ${input_userEmail}      ${email}
    ${telefone}     FakerLibrary.PhoneNumber
    Input Text      ${input_userNumber}      ${telefone}
    ${endereço}     FakerLibrary.Address
    Input Text      ${textarea_currentAddress}      ${endereço}


***Test Cases***
TC01 - Acessar e preencher formulario
    Dado que acesse o formulario
    Então o formulario deve ser preenchido