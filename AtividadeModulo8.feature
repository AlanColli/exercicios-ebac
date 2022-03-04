#language: pt

Funcionalidade: Configurar Produto
Como cliente do portal Ebac
quero configurar pedido e quantidade
e inserir no carrinho

Cenário: Configurando Produto
Dado que eu acesse o potal Ebac
E que eu selecione um produto
Quando eu selecionar uma opção em "Size" e "color"
E Selecionar a quantidade de itens desejados
E Clicar na opção "Comprar"  
Entao O produto devera ser adicionado ao carrinho

Cenário: Quantidade de itens
Dado que eu acesse o potal Ebac
E que eu selecione um produto
Quando eu selecionar a quantidade de itens
E essa quantidade estiver entre 1 a 10
E Clicar na opção "Comprar"  
Entao O produto devera ser adicionado ao carrinho
Mas Se a quandidade de itens for maior que 10
Entao A mensagem "Maximo de 10 itens" devera ser apresentada

Cenário: Botão Limpar
Dado que eu acesse o potal Ebac
E que eu selecione um produto
Quando eu selecionar uma opção em "Size" e "color"
E selecionar a quantidade de itens
E Selecionar a opção "Limpar"
Entao O produto devera voltar ao seu estado default

Funcionalidade: Login na Plataforma
Como cliente da Ebac
quero fazer login na plataforma 
e visualizar meus pedidos

Cenario: Autenticação Válida
Dado que acesse a pagina de login do portal Ebac_Shop
Quando eu digitar o usuario "Alan@ebac.com.br"
E a senha "Senha123"
Entao deve exibir uma mensagem de Boas Vindas "Ola Alan"
E tela de Checkout devera ser exibida
Mas Se eu digitar o usuario "abc123@ebac.com.br"
E a senha "Senha123"
Entao deve exibir uma mensagem de "Usuario Inválido"

Funcionalidade: Cadastro Portal EbacShop
Como novo cliente da Ebac
Quero me cadastrar no portal EbacShop
Para finalizar minha Comprar

Cenario: Concluir Cadastro Portal EbacShop
Dado que eu acesse o portal Ebac_Shop
E envie um produto para o carrinho
E acesse a opção "Finalizar Compra"
E ainda nao tenha concluido o Cadastro
Entao Devo preencher todas as opções marcadas com asteristicos
Mas caso nao preencha todas as opções a mensagem "Campos obrigatorios em branco" devera ser apresentada
E digitar email valido
Mas se digitar email sem Autenticação a mensagem "Email Invalido" devera ser apresentada
Entao ao selecionar Finalizar Compra Deve exibir mensagem "Cadastro Efetuado Com Sucesso"

Esquema do Cenario: Campos de cadastro EbacShop
Quando eu digitar o <Nome>
E o <Sobrenome>
E Selecionar <Pais>
E digitar <Endereco>
E <Cidade>
E <Cep>
E <Telefone>
E <Endereco de Email>
E selecionar finalizar Compra
Entao Deve exibir mensagem "Cadastro Efetuado Com Sucesso"

Exemplos:
| Nome | Sobrenome | Pais   | Endereço    | Cidade    | Cep       | Telefone    | Endereço de Email   | Mensagem                      |
| Alan | Fonseca   | Brasil | Rua exemplo | São Paulo | 12345-123 | 11912344321 | alan@example.com.br | Cadastro efetuado Com Sucesso |
| Alan | Fonseca   | Brasil | Rua exemplo | São Paulo | 12345-123 | 11912344321 | alan@example.com    | Cadastro efetuado Com Sucesso |
| Alan | Fonseca   | Brasil | Rua exemplo | São Paulo | 12345-123 | 11912344321 | alan@example.com.b  | Email Invalido                |
| Alan | Fonseca   | Brasil | Rua exemplo | São Paulo | 12345-123 | 11912344321 | alan2example.com.br | Email Invalido                |
| Alan |           | Brasil | Rua exemplo |           | 12345-123 | 11912344321 | alan@example.com    | Campos obrigatorios em branco |
               |



