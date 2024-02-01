***Settings***
Library     SeleniumLibrary

***Keywords***
#Formato do FOR de listas
#    FOR     ${animal}       IN      gato        cachorro        cavalo
#        Log     O animal desse laço é: ${animal}!
#        Log     Vamos para o próximo animal da lista...
#    END

#Cria cadastro de produtos FOR aninhado
#    FOR     ${produto}      IN      babylooke       camiseta        blusa
#        Imprime tamanhos para o produto      ${produto}
#    END

#Imprime tamanhos para o produto
#    [Arguments]     ${produto}
#    FOR     ${tamanho}      IN      P     M     G
#        Log     Produto: ${produto} - Tamanho: ${tamanho}
#    END

Cria dicionario de traduções
    FOR     ${index}        ${english}      ${finnish}      ${portugues}        IN
    ...      1               cat             kissa           gato      
    ...      2               dog             koira           cachorro
    ...      3               horse           hevonen         cabalo
        Log     Animal  ${index}:\nEm inglês:   ${english}\nEm finlandês:   ${finnish}\nEm português:   ${portugues}
    END
***Test Cases***
TC01 - Testando loop For
    #Formato do FOR de listas
    #Cria cadastro de produtos FOR aninhado
    Cria dicionario de traduções