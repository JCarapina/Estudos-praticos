-- Ingestao de dados para verificar se o trigger esta atualizando faturamento diario

INSERT INTO Pedidos(ID, IDCliente, DataHoraPedido, Status)
VALUES (451, 27, '2023-10-07 14:30:00', 'Em Andamento');
SELECT * FROM pedidos
----
INSERT INTO Itens_pedido(IDPedido, IDProduto, Quantidade, PrecoUnitario)
VALUES
    (451, 14, 1, 6.0),
    (451, 13, 1, 7.0);
SELECT * FROM itens_pedido;
----
INSERT INTO Pedidos (ID, IDCliente, DataHoraPedido, Status) 
VALUES (452, 28, '2023-10-07 14:35:00', 'Em Andamento');
---
INSERT INTO Itens_pedido (IDPedido, IDProduto, Quantidade, PrecoUnitario) VALUES (452, 10, 1, 5.0),
         (452, 31, 1, 12.50);

SELECT * FROM FaturamentoDiario;
