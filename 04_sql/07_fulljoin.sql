-- FULL JOIN para listar clientes sem pedidos e pedidos sem clientes

SELECT c.Nome, p.Id
FROM clientes AS c
FULL JOIN pedidos AS p
ON c.Id = p.IdCliente
WHERE c.Nome IS NULL OR p.Id IS NULL;
