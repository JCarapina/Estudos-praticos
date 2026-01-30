-- 3. Faça uma subconsulta para encontrar o ID, Nome e telefone do cliente que fez um pedido em uma data e hora específicas.

SELECT Nome, Telefone
FROM Clientes
WHERE ID = (
    SELECT IdCliente
    FROM Pedidos
    WHERE DataHoraPedido = '2023-01-02 08:15:00');

---
-- OBS WHERE ID "=" Retorna o Unico valor, ID IN Retorna todos valores
-- 4 Listando clientes que fizeram pedidos em janeiro de 2023.
SELECT Nome
FROM Clientes
WHERE ID IN (
    SELECT IdCliente
    FROM Pedidos
    WHERE strftime('%m', DataHoraPedido) = '01'
);


-- 5. Subquery com Having
 --Saber os produtos que tem um preço acima da média de todos os produtos cadastrados.
SELECT Nome, Preco
FROM Produtos
GROUP BY Nome, Preco
HAVING Preco > (
    SELECT AVG(Preco)
    FROM Produtos
);

