-- Excluir clientes que nunca fizeram pedidos
DELETE FROM Clientes
WHERE id_cliente NOT IN (
    SELECT DISTINCT id_cliente FROM Pedidos
);

-- Excluir produtos que não têm mais estoque e não estão em nenhum pedido
DELETE FROM Produtos
WHERE estoque = 0
  AND id_produto NOT IN (
      SELECT DISTINCT id_produto FROM Itens_Pedido
  );

-- Excluir pedidos feitos antes de uma data específica
DELETE FROM Pedidos
WHERE data_pedido < '2024-05-01';
