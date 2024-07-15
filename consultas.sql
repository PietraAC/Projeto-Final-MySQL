-- a) Consultas para cada tabela com SELECT, WHERE e ORDER BY

-- Proprietarios: nomes que começam com 'J'
SELECT * FROM Proprietarios WHERE nome LIKE 'J%' ORDER BY nome;

-- Imoveis: endereços que contêm 'Rua'
SELECT * FROM Imoveis WHERE endereco LIKE '%Rua%' ORDER BY endereco;

-- Corretores: telefones que terminam com '456'
SELECT * FROM Corretores WHERE telefone LIKE '%456' ORDER BY nome;

-- Inquilinos: nomes que contêm 'a'
SELECT * FROM Inquilinos WHERE nome LIKE '%a%' ORDER BY nome;

-- Proprietarios_Corretores: corretor_id = 2
SELECT * FROM Proprietarios_Corretores WHERE corretor_id = 2 ORDER BY proprietario_id;

-- Corretores_Inquilinos: inquilino_id = 1
SELECT * FROM Corretores_Inquilinos WHERE inquilino_id = 1 ORDER BY corretor_id;

-- Alugueis: imovel_id = 3
SELECT * FROM Alugueis WHERE imovel_id = 3 ORDER BY inquilino_id;

-- b) Consulta com AVG ou COUNT e GROUP BY

-- Explicação: Essa consulta mostra a quantidade de imóveis por proprietário, agrupando os resultados a partir do ID dos proprrietários.
SELECT proprietario_id, COUNT(*) as quantidade_imoveis 
FROM Imoveis 
GROUP BY proprietario_id;

-- c) Consulta com INNER JOIN entre duas tabelas

-- Explicação: Essa consulta mostra o nome do proprietário e o endereço dos imóveis dele, usando duas tabelas: Proprietarios e Imoveis. 
SELECT p.nome as nome_proprietario, i.endereco as endereco_imovel 
FROM Proprietarios p 
INNER JOIN Imoveis i ON p.id = i.proprietario_id;

-- d) Consulta com LEFT JOIN ou RIGHT JOIN entre duas tabelas

-- Explicação: Essa consulta mostra todos os corretores e todos os inquilinos que eles atendem. Mostra também os corretores que não tem inquilinos
SELECT c.nome as nome_corretor, i.nome as nome_inquilino 
FROM Corretores c 
LEFT JOIN Corretores_Inquilinos ci ON c.id = ci.corretor_id 
LEFT JOIN Inquilinos i ON ci.inquilino_id = i.id;

-- e) Consulta com INNER JOIN envolvendo três ou mais tabelas

-- Nomes dos inquilinos, endereços dos imóveis alugados e nomes dos corretores
SELECT i.nome as nome_inquilino, im.endereco as endereco_imovel, c.nome as nome_corretor
FROM Inquilinos i
INNER JOIN Alugueis a ON i.id = a.inquilino_id
INNER JOIN Imoveis im ON a.imovel_id = im.id
INNER JOIN Corretores_Inquilinos ci ON i.id = ci.inquilino_id
INNER JOIN Corretores c ON ci.corretor_id = c.id;
