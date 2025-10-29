-- Cardápio
INSERT INTO Cardapio (nome_cafe, descricao, preco_unitario) VALUES
('Espresso', 'Café curto e forte feito sob pressão', 4.50),
('Cappuccino', 'Café com leite vaporizado e espuma', 6.00),
('Mocha', 'Café com chocolate e leite vaporizado', 7.00),
('Latte', 'Café com bastante leite vaporizado', 6.50),
('Macchiato', 'Café espresso com uma gota de leite', 5.00);

-- Comandas
INSERT INTO Comanda (data_comanda, mesa, nome_cliente) VALUES
('2025-10-25', 1, 'Ana Souza'),
('2025-10-25', 2, 'Carlos Lima'),
('2025-10-26', 1, 'Beatriz Alves'),
('2025-10-26', 3, 'Diego Rocha'),
('2025-10-27', 2, 'Fernanda Reis');

-- Itens de comandas
INSERT INTO ItemComanda (cod_comanda, cod_cardapio, quantidade) VALUES
-- Comanda 1 (Ana)
(1, 1, 2), 
(1, 2, 1), 

-- Comanda 2 (Carlos)
(2, 3, 2), 

-- Comanda 3 (Beatriz)
(3, 4, 1), 
(3, 5, 1), 

-- Comanda 4 (Diego)
(4, 2, 3), 
(4, 3, 1), 
(4, 5, 2), 

-- Comanda 5 (Fernanda)
(5, 1, 1);
