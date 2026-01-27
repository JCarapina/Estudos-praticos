-- UNION: Combina os resultados de duas ou mais consultas SELECT em um único conjunto de resultados, eliminando duplicatas.
-- Mandar um brinde para os colaboradores e fornecedores


SELECT Rua, Bairro, Cidade, Estado, CEP 
FROM colaboradores
UNION
SELECT Rua, Bairro, Cidade, Estado, CEP 
FROM fornecedores;