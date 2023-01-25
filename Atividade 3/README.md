# Trabalho de Inteligência de Negócios

## Victor Eugenio Mainardi Fritz


### Problema
Uma empresa de varejo deseja registrar e analisar suas vendas para tomar decisões. Para isso, a empresa precisa de informações como o total de vendas de cada categoria de produto, agrupado por mês, o total de vendas de cada loja, agrupado por estado e o total de vendas para cada cliente, agrupado por cidade e estado.

### Solução
Para resolver esse problema, foi criado um banco de dados com tabelas para armazenar informações dos produtos, vendas, clientes e lojas. Essas tabelas foram relacionadas entre si, permitindo junções. Foi desenvolvido um projeto conceitual, lógico e físico para representar o banco de dados.

### Projeto Conceitual:

#### Projeto Lógico

* Tabela "produtos": armazena informações sobre os produtos vendidos, como nome, categoria e preço.
* Tabela "lojas": armazena informações sobre nome, cidade e estado.
* Tabela "vendas": armazena informações sobre as vendas, como o ID do produto, o ID da loja, a quantidade vendida e o preço total.
* Tabela "clientes": armazena informações básicas dos clientes, como nome, cidade e estado.
* Tabela "vendas_clientes": armazena informações sobre ID da venda e preço total.


#### Projeto Físico
* Tabela Produtos: contém campos como id (INT, chave primária), nome (VARCHA ),categoria (VARCHAR), preco (DECIMAL) tipo (VARCHAR).

* Tabela Lojas: contém campos como id (INT, chave primária), nome (VARCHAR), cidade (VARCHAR) e estado (VARCHAR).
* Tabela Venda: contém campos como id (INT, chave primária), id_produto (INT, chave estrangeira da tabela Produtos), id_loja (INT, chave estrangeira da tabela Lojas), data (DATE), quantidade (INT) e valor (DECIMAL).
* Tabela Clientes: contém campos como id (INT, chave primária), nome (VARCHAR), cidade (VARCHAR) e estado (VARCHAR).
* Tabela Vendas_Clientes: contém campos como id_venda (INT, chave estrangeira da tabela Vendas) e id_cliente (INT, chave estrangeira da tabela Clientes).


### Perguntas a serem resolvidas:
* Qual foi o total de vendas de cada categoria de produto?
* Qual foi o total de vendas de cada loja, agrupado por estado?
* Qual foi o total de vendas para cada categoria de produto, agrupado por mês e estado da loja?