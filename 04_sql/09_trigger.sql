-- Consulta para trazer o faturamento diario

SELECT
    DATE(p.DataHoraPedido) AS Dia,
    SUM(ip.PrecoUnitario) AS FaturamentoDiario
FROM pedidos AS p
INNER JOIN itens_pedido AS ip
ON p.Id = ip.IdPedido
GROUP BY Dia
ORDER BY Dia;

CREATE TABLE FaturamentoDiario (
    Dia DATE PRIMARY KEY,
    FaturamentoDiario DECIMAL(10,2)
);

CREATE TRIGGER AtualizaFaturamentoDiario
AFTER INSERT ON itens_pedido
FOR EACH ROW

BEGIN
DELETE FROM FaturamentoDiario;
INSERT INTO FaturamentoDiario (Dia, FaturamentoDiario)
SELECT
    DATE(p.DataHoraPedido) AS Dia,
    SUM(ip.PrecoUnitario) AS FaturamentoDiario
FROM pedidos AS p
INNER JOIN itens_pedido AS ip
ON p.Id = ip.IdPedido
GROUP BY Dia
ORDER BY Dia;

END;


SELECT * FROM FaturamentoDiario;