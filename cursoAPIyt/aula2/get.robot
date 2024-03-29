*** Settings ***
Library        RequestsLibrary
Library        String

*** Variables ***
${HOST}        https://dummyjson.com             ### CONSTANTES EM MAIUSCULO    

###rotas
${GET_ALL_PRODUCTS}        products
${GET_SINGLE_PRODUCT}      products/id-produto

*** Keywords ***
Pegar todos os produtos

    &{headers}  Create Dictionary        Content_type=application/json

    GET        url=${HOST}/${GET_ALL_PRODUCTS}  headers=&{headers}

Pegar um unico produto de id ${id}

    &{headers}  Create Dictionary        Content_type=application/json

    ${GET_SINGLE_PRODUCT}=        Replace String        ${GET_SINGLE_PRODUCT}        id-produto        ${id}        ###replace string recebe: oque eu quero alterar, o que buscar para alterar e o o que alterar no elemento buscado

    GET        url=${HOST}/${GET_SINGLE_PRODUCT}  headers=&{headers}

*** Test Cases ***
TC01 - Realizar busca de todos os produtos
    Pegar todos os produtos


TC02 - Realizar busca de um unico produto
    Pegar um unico produto de id 50