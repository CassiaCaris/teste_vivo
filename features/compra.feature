#language: pt

Funcionalidade: Compra de produto on-line
# 1. Realizar busca de itens;
# 2. Adição de um item no carrinho;
# 3. Alterar a quantidade de um item do carrinho;
# 4. Remoção de item do carrinho;
# 5. Ir para a tela de checkout e preencher os dados necessários para concluir a compra;

Cenário: Realizar busca de itens
    Dado que estou na página da Vivo
    Quando procuro o produto que desejo adquirir
    Então seleciono o produto 

Cenário: Inserção do item no carrinho
    Dado que estou com o produto selecionado
    Quando insero no carrinho
    Então consulto o produto no carrinho

Cenário: Alteração de quantidade de item no carrinho
    Dado estou no carrinho
    E volto paa continuar comprando
    Quando seleciono novo produto
    Então altero a quantidade do produto selecionado

Cenário: Remoção do item do carrinho
    Dado estou no carrinho
    Quando removo um item do carrinho
    Então tenho o carrinho atualizado

@wip
#não foi possivel finalizar o cenario devido o site se encontrar com erro.
Cenário: Finalziação de compra
    Dado que seleciono o produto desejado
    E insiro no carrinho
    Quando preencho os dados para finalização da compra
    Então finalizo a compra com sucesso