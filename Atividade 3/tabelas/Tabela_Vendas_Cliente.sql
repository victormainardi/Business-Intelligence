/* Tabela 5 Vendas_Clientes */
CREATE TABLE Vendas_Clientes (
    id_venda INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES Vendas(id),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);
