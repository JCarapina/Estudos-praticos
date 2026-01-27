-- 3. Faça uma subconsulta para encontrar o ID, Nome e telefone do cliente que fez um pedido em uma data e hora específicas.

SELECT Nome, Telefone
FROM Clientes
WHERE ID = (
    SELECT IdCliente
    FROM Pedidos
    WHERE DataHoraPedido = '2023-01-02 08:15:00')