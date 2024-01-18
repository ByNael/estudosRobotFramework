***Settings***
Resource        ../../resources/main.robot
Test Setup      Quando abro o site My Shop
Test Teardown   Fechar navegador  

***Test Cases***
TC01 - Adicionando um vestido com a cor alterada ao carrinho
    Dado que pesquiso uma roupa 
    Quando clique no botão pesquisar
    E clique no primeiro produto 
    E altere a cor
    E clique em adicionar ao carrinho
    E clique em continuar comprando
    Então continuo na pagina do produto