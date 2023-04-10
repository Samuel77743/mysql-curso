-- Exercicio 01: Selecione uma lista com todos os nomes de pessoas do sexo feminino
SELECT nome FROM gafanhotos
WHERE sexo = 'F'
ORDER BY nome asc;

-- Exercicio 02: Selecione uma lista com dados de pessoas que nasceram entre 2000 e 2015
SELECT nome, sexo, nacionalidade, nascimento
FROM gafanhotos
WHERE nascimento between '2000-01-01' AND '2015-12-31'
order by nascimento asc;

-- Exercicio 03: Selecione lista de todos homens programadores
SELECT nome, profissao 
FROM gafanhotos
WHERE sexo = 'M' and profissao = 'programador'
order by nome asc;

-- Exercicio 04: Selecione uma lista de mulheres brasileiras que o nome começa com 'J'
SELECT nome, sexo, nacionalidade
FROM gafanhotos
WHERE sexo = 'F' and nome like 'j%' and nacionalidade = 'Brasil'
order by nome asc;

-- Exercicio 05: Selecione o nome e nacionalidade de todos homens que tem Silva no nome, não nasceram no Brasil e pesam menos de 100kg
SELECT nome, nacionalidade 
FROM gafanhotos
WHERE sexo = 'M' and nome like '%Silva%' and nacionalidade != 'Brasil' and peso < '100';

-- Exercicio 06: Qual é a maior altura registrada entre homens que moram no Brasil
SELECT max(altura) FROM gafanhotos
WHERE sexo = 'M' and nacionalidade = 'Brasil';

-- Exercicio 07: Qual a média de peso de todos 'gafanhotos'
SELECT 	avg(peso) FROM gafanhotos;

-- Exercicio 08: Qual o menor peso entre as mulheres que nao nasceram no Brasil e entre 1990 e 200
SELECT min(peso) FROM gafanhotos
WHERE sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- Exercicio 09: Quantas mulheres tem mais de 1.90 de altura
SELECT count(nome) FROM gafanhotos
WHERE sexo = 'F' and altura > '1.9';