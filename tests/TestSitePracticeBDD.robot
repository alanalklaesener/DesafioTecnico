*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}      http://automationpractice.com/
${BROWSER}  chrome

*** Test Case ***
Cenário 01: Pesquisar Produto Existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar Produto Não Existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "produtoNãoExistente"
    Então a página deve ser exibida a mensagem "No results were found for your search "produtoNãoExistente""

*** Keywords ***
