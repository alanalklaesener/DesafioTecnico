*** Setting ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}  firefox
${URL}      http://automationpractice.com

*** Keywords ***
### Setup e TEARDOWN

Abrir navegador
   Open Browser    about:blank   ${BROWSER}

Fechar navegador
   Close Browser

#Caso de teste 01: Consultar produtos no site
#Deve ser possível consultar os produtos casdastrados por meio de um campo de pesquisa
Acessar a página home do site
   Go To    http://automationpractice.com
   Title Should Be    My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
   Input Text    name=search_query   ${PRODUTO}

Clicar no botão pesquisar
   Click Element    name=submit_search

#Quando nenhum produto for encontrado, deve ser exibida a mensagem: "No results were found for your search '{TEXTO DA PESQUISA}'"
Conferir mensagem de erro  "${MENSAGEM_ALERTA}"
   Wait Until Element Is Visible  //*[@id="center_column"]/p[@class='alert alert-warning']
###   Element Text Should Be         //*[@id="center_column"]/p[@class='alert alert-warning']   ${MENSAGEM_ALERTA}

#Ao realizar uma pesquisa, deve ser exibido o total de resultados
Conferir total de resultados  "${CONTADOR_RESULTADO}"
   Wait Until Element Is Visible  //*[@id="center_column"]/p[@class='heading-counter'] 
###   Element Text Should Be         //*[@id="center_column"]/p[@class='heading-counter']  ${CONTADOR_RESULTADO}   

#Os resultados devem ser exibidos em formato de grid e lista
Clicar no botão Grid
   Click Element    id=grid
Clicar no botão List
   Click Element    id=list

#Deve ser exibido o total de itens e quantidade por página
###Conferir total de itens  "${QTDITEM}" 
###   Element Text Should Be    //*[@id="center_column"]/p[@class='heading-counter'] 
###Conferir total de páginas  "${QTDPAG}"
###   Element Text Should Be    //*[@id="center_column"]/p[@class='product-count'] 

#Caso de teste 02: Utilizar o carrinho de compras para adicionar e remover produtos.
#Quando o carrinho estiver vazio, deve ser exibida a mensagem: “Your shopping cart is empty”;
Acessar o carrinho de compras
   Go To    http://automationpractice.com/index.php?controller=order

Conferir a mensagem de carrinho vazio  "${MENSAGEM_CARRINHOVAZIO}"
###   Wait Until Element Is Visible  //*[@id="center_column"]/p[@class='alert alert-warning']
###   Element Text Should Be         //*[@id="center_column"]/p[@class='alert alert-warning']   ${MENSAGEM_CARRINHOVAZIO}