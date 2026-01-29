-- Verifica se todos os produtos ja foram pedidos pelos clientes

SELECT t2.Nome, t1.Idproduto, t1.Idpedido
FROM itens_pedido AS t1

RIGHT JOIN produtos AS t2
ON t2.Id = t1.Idproduto

ORDER BY 3 ASC;

----



SELECT t3.Nome, x.Idproduto, x.Idpedido
FROM(
    SELECT t2.Idpedido, t2.Idproduto
    FROM Pedidos as t1
    JOIN Itens_Pedido as t2
    ON t1.Id = t2.Idpedido
    WHERE strftime('%m', t1.DataHoraPedido) = '10') AS x

RIGHT JOIN produtos AS t3
ON t3.Id = x.Idproduto
