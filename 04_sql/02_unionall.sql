-- Combina os resultados de duas consultas, incluindo duplicatas
SELECT Nome, Rua, Bairro, Cidade, Estado, CEP 
FROM colaboradores
UNION ALL
SELECT Nome, Rua, Bairro, Cidade, Estado, CEP 
FROM fornecedores;
