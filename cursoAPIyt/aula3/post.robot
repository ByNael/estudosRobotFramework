*** Settings ***
Library        RequestsLibrary
Library        String

*** Variables ***
${HOST}        https://dummyjson.com             ### CONSTANTES EM MAIUSCULO    

###rotas
${ADD_NEW_PRODUCT}        products/add

*** Keywords ***
Adicionar novo produto
    [Arguments]    ${title}    ${description}    ${price}    ${brand}

    &{headers}  Create Dictionary        Content_type=application/json
    ${body}     Create Dictionary        title=${title}  description=${description}  price=${price}  brand=${brand}

    POST        url=${HOST}/${ADD_NEW_PRODUCT}        headers=&{headers}        json=&{body}

*** Test Cases ***
TC01 - Realizar adição de um novo produto
    Adicionar novo produto  title=iphone 14  description=celular da apple  price=7000  brand=Apple