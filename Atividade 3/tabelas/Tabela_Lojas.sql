/* Criar Tabela 2 Lojas */
CREATE TABLE Lojas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL
);