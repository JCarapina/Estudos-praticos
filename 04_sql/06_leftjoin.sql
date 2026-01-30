-- LEFT JOIN para todos os clientes com seus pedidos em outubro (incluindo os que nao fizeram pedidos)
SELECT c.Nome, p.Id
FROM clientes AS c
LEFT JOIN pedidos AS p
ON c.Id = p.IdCliente
AND strftime('%m', p.DataHoraPedido) = '10';


-- Left Join para clientes em outubro com pedidos 
SELECT c.Nome, p.Id
FROM clientes AS c
LEFT JOIN pedidos AS p
ON c.Id = p.IdCliente
WHERE strftime('%m', p.DataHoraPedido) = '10';

----
 -- todos os clientes que nao fizeram pedidos em outubro
SELECT c.Nome, x.id
FROM clientes AS c
LEFT JOIN
-- subconsulta para filtrar clients que nao fizeram pedidos
(
    SELECT p.Id, p.IdCliente
    FROM pedidos P
    WHERE strftime('%m', p.DataHoraPedido) = '10') AS x
ON c.Id = x.IdCliente
WHERE x.IdCliente IS NULL;

-- contar os clientes nulos
SELECT COUNT(DISTINCT c.Nome) AS clientes_sem_pedidos
FROM clientes AS c
LEFT JOIN
-- subconsulta para filtrar clients que nao fizeram pedidos
(
    SELECT p.Id, p.IdCliente
    FROM pedidos P
    WHERE strftime('%m', p.DataHoraPedido) = '10') AS x
ON c.Id = x.IdCliente
WHERE x.IdCliente IS NULL;