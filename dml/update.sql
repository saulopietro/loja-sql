-- Atualizar o preço de todos os produtos da categoria "Vestuário" com um reajuste de 10%
UPDATE Produtos
SET preco = preco * 1.10
WHERE categoria = 'Vestuário';

-- Atualizar o e-mail de um cliente que entrou em contato para correção
UPDATE Clientes
SET email = 'joaosilva.novo@email.com'
WHERE nome = 'João Silva';

-- Corrigir a forma de pagamento de um pedido que foi registrado incorretamente
UPDATE Pedidos
SET forma_pagamento_id = 2
WHERE id_pedido = 1;
