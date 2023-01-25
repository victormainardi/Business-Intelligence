/* Criar Tabela 1 Produtos */
CREATE TABLE Produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco NUMERIC(10,2) NOT NULL
);
