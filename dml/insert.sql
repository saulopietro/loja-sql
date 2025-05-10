INSERT INTO Formas_Pagamento (descricao) VALUES
('Dinheiro'),
('Cartão de Crédito'),
('Cartão de Débito'),
('Pix'),
('Boleto'),
('Transferência Bancária'),
('Carteira Digital'),
('Vale Alimentação'),
('Crédito na Loja'),
('Fiado');

INSERT INTO Clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao@email.com', '11988887777', 'Rua A, 123'),
('Maria Oliveira', 'maria@email.com', '11977776666', 'Rua B, 456'),
('Carlos Souza', 'carlos@email.com', '11966665555', 'Av. Central, 789'),
('Ana Lima', 'ana@email.com', '11955554444', 'Rua C, 101'),
('Paulo Mendes', 'paulo@email.com', '11944443333', 'Rua D, 202'),
('Fernanda Rocha', 'fernanda@email.com', '11933332222', 'Rua E, 303'),
('Ricardo Torres', 'ricardo@email.com', '11922221111', 'Rua F, 404'),
('Juliana Campos', 'juliana@email.com', '11911110000', 'Rua G, 505'),
('Lucas Barbosa', 'lucas@email.com', '11900009999', 'Rua H, 606'),
('Patrícia Dias', 'patricia@email.com', '11899998888', 'Rua I, 707');

INSERT INTO Produtos (nome, descricao, preco, estoque, categoria) VALUES
('Camiseta Polo', 'Camiseta de algodão', 59.90, 100, 'Vestuário'),
('Tênis Esportivo', 'Tênis leve para corrida', 199.90, 50, 'Calçados'),
('Mochila Escolar', 'Mochila resistente', 89.90, 75, 'Acessórios'),
('Smartphone X', 'Celular 128GB', 1499.00, 30, 'Eletrônicos'),
('Fone Bluetooth', 'Fone sem fio', 129.90, 120, 'Eletrônicos'),
('Relógio Digital', 'Relógio com pulseira de borracha', 199.00, 45, 'Acessórios'),
('Calça Jeans', 'Calça masculina azul', 99.90, 60, 'Vestuário'),
('Blusa de Frio', 'Blusa com capuz', 149.90, 40, 'Vestuário'),
('Chinelo', 'Chinelo de borracha', 29.90, 200, 'Calçados'),
('Notebook Y', 'Notebook com 8GB RAM', 2999.00, 15, 'Eletrônicos');

INSERT INTO Pedidos (id_cliente, data_pedido, valor_total, forma_pagamento_id) VALUES
(1, '2024-05-01 14:30:00', 149.80, 1),
(2, '2024-05-02 15:00:00', 59.90, 3),
(3, '2024-05-03 10:15:00', 299.80, 2),
(4, '2024-05-04 11:20:00', 1499.00, 4),
(5, '2024-05-05 13:50:00', 229.90, 1),
(6, '2024-05-06 09:10:00', 99.90, 5),
(7, '2024-05-07 16:45:00', 129.90, 6),
(8, '2024-05-08 17:30:00', 199.00, 2),
(9, '2024-05-09 12:00:00', 89.90, 4),
(10, '2024-05-10 18:00:00', 2999.00, 3);

INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 59.90),
(2, 1, 1, 59.90),
(3, 2, 1, 199.90),
(3, 5, 1, 99.90),
(4, 4, 1, 1499.00),
(5, 3, 2, 89.90),
(6, 7, 1, 99.90),
(7, 5, 1, 129.90),
(8, 6, 1, 199.00),
(9, 3, 1, 89.90),
(10, 10, 1, 2999.00);
