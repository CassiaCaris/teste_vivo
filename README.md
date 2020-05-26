# Teste proposta pela Vivo

## proposta do teste:

O Teste: Automatizar um fluxo de um e-commerce qualquer

### Pontos que devem ser contemplados nos testes:

1. Realizar busca de itens;
2. Adição de um item no carrinho;
3. Alterar a quantidade de um item do carrinho;
4. Remoção de item do carrinho;
5. Ir para a tela de checkout e preencher os dados necessários para concluir a compra;

### Pontos importantes:

• Os cenários devem ser estruturados utilizando Dado-Quando-Então;
• Utilizar somente dados fictícios (cpf, nome, cartão, etc);
• Informações como URL, usuário e senha devem ser parametrizados de alguma forma;
• Deve haver um README com todas instruções de como rodar os testes através da
ferramenta escolhida;
• O framework a ser utilizado fica a critério do candidato;
• Versionar o código em um repositório git de forma pública, mantendo todos os
históricos de commits desde o início do projeto até a conclusão do projeto;
• O prazo de entrega do projeto é de 1 semana após o recebimento do teste;

Obs.: Teste realizado em Capybara + Cucumber

## Para executar o teste:

1. Clonar o projeto para testar.
```
$ git clone https://github.com/CassiaCaris/teste_vivo.git
```

2. Antes de executar precisa ser instaladas as dependencias do projeto:
```
$ bundle install
```
3. Para executar o projeto deve ser usado o comando:
````
$ Cucumber
