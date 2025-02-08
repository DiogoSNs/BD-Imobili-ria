-- a) Consultas para cada tabela com SELECT, WHERE e ORDER BY

-- Seleciona todos os proprietários cujo nome começa com 'A', ordenado por nome
SELECT * FROM Proprietario WHERE nome LIKE 'A%' ORDER BY nome;

-- Seleciona todos os inquilinos cujo telefone começa com '21', ordenado por telefone
SELECT * FROM Inquilino WHERE telefone LIKE '21%' ORDER BY telefone;

-- Seleciona todos os imóveis com valor superior a 300000, ordenado por valor
SELECT * FROM Imovel WHERE valor > 300000 ORDER BY valor DESC;

-- Seleciona todos os corretores com CRECI que contenham '12', ordenado por nome
SELECT * FROM Corretor WHERE creci LIKE '%12%' ORDER BY nome;

-- b) Consulta com AVG ou COUNT e GROUP BY

-- Conta quantos imóveis cada proprietário possui
SELECT id_proprietario, COUNT(*) AS total_imoveis FROM Imovel GROUP BY id_proprietario;

-- Explicação: Essa consulta retorna o número total de imóveis de cada proprietário, agrupando os imóveis por id_proprietario.

-- c) Consulta envolvendo duas tabelas com INNER JOIN

-- Seleciona o nome dos proprietários e os endereços de seus imóveis
SELECT p.nome AS Proprietario, i.endereco AS Imovel 
FROM Proprietario p
INNER JOIN Imovel i ON p.id_proprietario = i.id_proprietario;

-- Explicação: Essa consulta retorna o nome dos proprietários e os endereços dos imóveis que eles possuem, unindo as tabelas Proprietario e Imovel.

-- d) Consulta envolvendo duas tabelas com LEFT JOIN

-- Seleciona os corretores e os inquilinos que eles atendem, mesmo que não tenham atendimento registrado
SELECT c.nome AS Corretor, i.nome AS Inquilino 
FROM Corretor c
LEFT JOIN Atende a ON c.id_corretor = a.id_corretor
LEFT JOIN Inquilino i ON a.id_inquilino = i.id_inquilino;

-- Explicação: Essa consulta retorna os nomes dos corretores e os inquilinos que eles atendem, incluindo corretores que ainda não atenderam nenhum inquilino.

-- e) Consulta envolvendo três tabelas com INNER JOIN

-- Seleciona os corretores, os inquilinos que eles atendem e os imóveis alugados por esses inquilinos
SELECT c.nome AS Corretor, i.nome AS Inquilino, im.endereco AS Imovel 
FROM Corretor c
INNER JOIN Atende a ON c.id_corretor = a.id_corretor
INNER JOIN Inquilino i ON a.id_inquilino = i.id_inquilino
INNER JOIN Imovel im ON i.id_inquilino = im.id_inquilino;

-- Explicação: Essa consulta retorna os nomes dos corretores, os nomes dos inquilinos que eles atendem e os endereços dos imóveis alugados por esses inquilinos, unindo as tabelas Corretor, Atende, Inquilino e Imovel.
