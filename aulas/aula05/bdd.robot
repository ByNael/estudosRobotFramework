***Settings***
Library     SeleniumLibrary


***Variables***
#Dados do meu teste
${nomeDaMusica}     Wiu Não me liga 00:00

#variávei de configuração
${URL}      https://www.youtube.com/
${Browser}      chrome

#mapeando elementos
${input_pesquisa}       //input[@id='search']
${button_pesquisa}      //button[@id="search-icon-legacy"]
${primeiro_elemento}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]     #escolhe semrpre o titulo do primeiro elemento da  pagina
${button_anuncio}       //button[@class="ytp-ad-skip-button-modern ytp-button"]       
${prova}                (//span[text()='Compartilhar'])[1]


***Keywords***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}      ${Browser}

Quando digito o nome da musica
    Wait Until Element Is Visible       ${input_pesquisa}
    Input Text      ${input_pesquisa}       ${nomeDaMusica}

E clico no botão buscar
    Click Element       ${button_pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible       ${primeiro_elemento}        10
    Click Element       ${primeiro_elemento}

Então o vídeo é executado
    Wait Until Element Is Visible       ${button_anuncio}       10
    Click Element       ${button_anuncio}
#Wait Until Element Is Visible       ${prova}        10
#Element Should Be Visible       ${prova}        #keyword que vai analisar se o elemento esta visivel e tudo no teste correu bem
    Sleep       198s       
    Close Browser

***Test Cases***
Cenário 1: Executar video no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da musica
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado 




#palavras reservadas do bdd = e(and), então(then), dado(given) e quando(when)