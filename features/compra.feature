#language: pt

Funcionalidade: Compra de produto on-line
# 1. Realizar busca de itens;
# 2. Adição de um item no carrinho;
# 3. Alterar a quantidade de um item do carrinho;
# 4. Remoção de item do carrinho;
# 5. Ir para a tela de checkout e preencher os dados necessários para concluir a compra;

Cenário: Acessar a página da Vivo
    Dado que estou na página da Vivo
    Quando procuro o produto que desejo adquirir
    Então seleciono o produto 