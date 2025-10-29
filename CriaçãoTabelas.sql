CREATE TABLE Cardapio (
    cod_cardapio INT AUTO_INCREMENT PRIMARY KEY,
    nome_cafe VARCHAR(100) UNIQUE NOT NULL,
    descricao VARCHAR(255),
    preco_unitario DECIMAL(10,2) NOT NULL
);


CREATE TABLE Comanda (
    cod_comanda INT AUTO_INCREMENT PRIMARY KEY,
    data_comanda DATE NOT NULL,
    mesa INT NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);


CREATE TABLE ItemComanda (
    cod_comanda INT NOT NULL,
    cod_cardapio INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (cod_comanda, cod_cardapio),
    FOREIGN KEY (cod_comanda) REFERENCES Comanda(cod_comanda),
    FOREIGN KEY (cod_cardapio) REFERENCES Cardapio(cod_cardapio)
);
