--Clientes com nome que começa com "J"
SELECT * FROM Clientes
WHERE nome LIKE 'J%';

-- Produtos com preço entre 50 e 200
SELECT * FROM Produtos
WHERE preco >= 50 AND preco <= 200;

-- Pedidos feitos com forma de pagamento "Dinheiro" ou "Pix"
SELECT p.*
FROM Pedidos p
JOIN Formas_Pagamento fp ON p.forma_pagamento_id = fp.id_forma_pagamento
WHERE fp.descricao IN ('Dinheiro', 'Pix');

-- Produtos que não são da categoria 'Eletrônicos'
SELECT * FROM Produtos
WHERE categoria <> 'Eletrônicos';

-- Clientes que não moram em ruas que começam com 'Rua A' ou 'Rua B'
SELECT * FROM Clientes
WHERE endereco NOT LIKE 'Rua A%' AND endereco NOT LIKE 'Rua B%';

-- Valor total de vendas por forma de pagamento
SELECT fp.descricao AS forma_pagamento, SUM(p.valor_total) AS total_vendas
FROM Pedidos p
JOIN Formas_Pagamento fp ON p.forma_pagamento_id = fp.id_forma_pagamento
GROUP BY fp.descricao
ORDER BY total_vendas DESC;

-- Média de preço dos produtos por categoria (somente categorias com mais de 2 produtos)
SELECT categoria, AVG(preco) AS media_preco
FROM Produtos
GROUP BY categoria
HAVING COUNT(*) > 2;

-- Quantidade de pedidos feitos por cada cliente
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM Clientes c
LEFT JOIN Pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
ORDER BY total_pedidos DESC;

-- Detalhes de itens de pedidos com JOIN em três tabelas
SELECT p.id_pedido, c.nome AS cliente, pr.nome AS produto, ip.quantidade, ip.preco_unitario
FROM Itens_Pedido ip
JOIN Pedidos p ON ip.id_pedido = p.id_pedido
JOIN Clientes c ON p.id_cliente = c.id_cliente
JOIN Produtos pr ON ip.id_produto = pr.id_produto;

-- Produto mais caro do sistema
SELECT nome, preco
FROM Produtos
ORDER BY preco DESC
LIMIT 1;
