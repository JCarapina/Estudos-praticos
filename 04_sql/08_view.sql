--- Criação da view que exibe o total gasto por cada cliente em seus pedidos
CREATE VIEW GastoPorCliente AS
SELECT p.Id, c.Nome, SUM(ip.PrecoUnitario) AS Total
FROM clientes AS c
JOIN pedidos AS p
ON c.Id = p.IdCliente
JOIN itens_pedido AS ip
ON p.Id = ip.IdPedido
GROUP BY p.id, c.Nome
ORDER BY Total DESC;

