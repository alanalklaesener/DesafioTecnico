*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test TEARDOWN   Fechar navegador
### SETUP ele roda Keywords antes da suite ou antes de um teste
### TEARDOWN ele roda Keywords depois de uma suite ou de um teste

*** Test Case ***
### DESAFIO WEB ###
Caso de teste 01: Consultar produtos no site
#Deve ser possível consultar os produtos casdastrados por meio de um campo de pesquisa
   Acessar a página home do site
   Digitar o nome do produto "Blouse" no campo de pesquisa
   Clicar no botão pesquisar
#Quando nenhum produto for encontrado, deve ser exibida a mensagem: "No results were found for your search '{TEXTO DA PESQUISA}'"
  Acessar a página home do site
  Digitar o nome do produto "produtoNãoExistente" no campo de pesquisa
  Clicar no botão pesquisar
###  Conferir mensagem de erro  "No results were found for your search "produtoNãoExistente"" --- Pendente
#Ao realizar uma pesquisa, deve ser exibido o total de resultados
   Acessar a página home do site
   Digitar o nome do produto "Blouse" no campo de pesquisa
   Clicar no botão pesquisar
###   Conferir total de resultados  "1" --- Pendente
#Os resultados devem ser exibidos em formato de grid e lista
   Acessar a página home do site
   Digitar o nome do produto "Dresses" no campo de pesquisa
   Clicar no botão pesquisar
   Clicar no botão Grid
   Clicar no botão List 
#Deve ser exibido o total de itens e quantidade por página
   Acessar a página home do site
   Digitar o nome do produto "Dresses" no campo de pesquisa
   Clicar no botão pesquisar
###   Conferir total de itens  "7" --- Pendente
###   Conferir total de páginas  "1" --- Pendente
 
Caso de teste 02: Utilizar o carrinho de compras para adicionar e remover produtos
#Quando o carrinho estiver vazio, deve ser exibida a mensagem: “Your shopping cart is empty”
  Acessar a página home do site
  Acessar o carrinho de compras
### Conferir a mensagem de carrinho vazio  "Your shopping cart is empty" --- Pendente   
#Ao adicionar um produto ao carrinho, o usuário deve ser questionado se deseja continuar comprando ou finalizar a compra
  Acessar a página home do site
  Digitar o nome do produto "Blouse" no campo de pesquisa
  Clicar no botão pesquisar
###  Clicar no botão Add to cart --- Pendente
#Ao acessar o carrinho, deve ser possível excluir os produtos
#No carrinho deve ser exibido o preço unitário do produto, total e a quantidade
#Deve ser exibido o total da compra

#Caso de teste 03: Exibir as categorias de produtos no menu da página inicial.
#Devem ser exibidos os menus: Woman, Dress e T-shirts;
#No menu Woman, devem ser exibidos os submenus Tops, com as categorias T-shirts e Blouses, e Dresses, com as categorias Casual Dresses, Evening, Dresses e Summer Dresses;
#No menu Dresses devem ser exibidas as categorias CASUAL DRESSES EVENING DRESSES SUMMER DRESSES;
#Os menus devem ser clicáveis e ao acessá-los os produtos da categoria devem ser exibidos.

### DESAFIO API ###
#Caso de teste 01: Permitir o cadastro de livros.
#No cadastro de livros, os seguintes campos devem ser informados: título, descrição, número de páginas, resumo e data de publicação. Todos os campos são opcionais.
#Caso de teste 02: Retornar livros cadastrados.
#No retorno devem ser exibidas as informações: título, descrição, número de páginas, resumo e data de publicação.
#Caso de teste 03: Retornar apenas um livro.
#Devem ser exibidas as informações do livro consultado.

#
# *** Keywords ***