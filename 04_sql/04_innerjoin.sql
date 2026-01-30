-- Inner Join é uma operação que combina linhas de duas ou mais tabelas com base em uma condição relacionada entre elas.
-- Exemplo: Listar todos os pedidos com o nome do cliente

Select t1.Nome, t2.Id, t2.DataHoraPedido
FROM Clientes AS t1
INNER JOIN Pedidos AS t2
ON t1.Id = t2.IdCliente;



