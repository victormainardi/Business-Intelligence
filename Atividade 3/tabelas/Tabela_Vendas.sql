/* Tabela 3 Vendas */
CREATE TABLE Vendas (
    id SERIAL PRIMARY KEY,
    id_produto INTEGER NOT NULL,
    id_loja INTEGER NOT NULL,
    data DATE NOT NULL,
    quantidade INTEGER NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id),
    FOREIGN KEY (id_loja) REFERENCES Lojas(id)
);