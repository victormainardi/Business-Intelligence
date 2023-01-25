# Trabalho de Inteligência de Negócios

## Victor Eugenio Mainardi Fritz


### Problema
Uma empresa de varejo deseja manter registro de suas vendas e analisá-las para tomada de decisão.


### Projeto Conceitual:

#### Projeto Lógico

Tabela "produtos": armazena informações sobre os produtos vendidos, como nome, categoria e preço.

Tabela “lojas”: armazena informações sobre nome, cidade e estado.

Tabela "vendas": armazena informações sobre as vendas, como o ID do produto, o ID da loja, a quantidade vendida e o preço total.

Tabela "clientes": armazena informações básicas dos clientes, como nome, cidade e estado.

Tabela “vendas_clientes”: armazena informações sobre ID da venda e preço total.


#### Projeto Físico

##### Tabela Produtos
´
id (INT, chave primaria)
nome (VARCHAR)
categoria (VARCHAR)
preco (DECIMAL)
tipo (VARCHAR)
´

##### Tabela Lojas
´
id (INT, chave primaria)
nome (VARCHAR)
cidade (VARCHAR)
estado (VARCHAR)
´

##### Tabela Venda
´
id (INT, chave primaria)
id_produto (INT, chave estrangeira da tabela Produtos)
id_loja (INT, chave estrangeira da tabela Lojas)
data (DATE)
quantidade (INT)
valor (DECIMAL)
´

##### Tabela Clientes
´
id (INT, chave primaria)
nome (VARCHAR)
cidade (VARCHAR)
estado (VARCHAR)
´

##### Tabela Vendas_Clientes
´
id_venda (INT, chave estrangeira da tabela Vendas)
id_cliente (INT, chave estrangeira da tabela Clientes)
´


### Perguntas a serem resolvidas:

#### 1.Qual foi o total de vendas de cada categoria de produto?


#### 2.Qual foi o total de vendas de cada loja, agrupado por estado?


#### 3.Qual foi o total de vendas para cada categoria de produto, agrupado por mês e estado da loja
