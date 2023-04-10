-- EXERCICIO 01: Apresente quantos funcionarios há em cada profissão
SELECT profissao, count(nome) 
FROM gafanhotos
GROUP BY profissao
order by profissao asc;

-- EXERCICIO 02: Agrupe quantos homens e mulheres nasceram a partir de 2005
SELECT sexo, count(*) 
FROM gafanhotos
WHERE nascimento > '2005-01-01'
group by sexo;

-- EXERCICIO 03: Liste quantas pessoas moram em países estrangeiros(diferentes de 'Brasil'), mas apenas os que tiverem mais de 3 pessoas
SELECT nacionalidade, count(nacionalidade) 
FROM gafanhotos
WHERE nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;

-- EXERCICIO 04: Agrupe uma lista com altura das pessoas que pesam mais de 100kg, mas que a altura está acima da média
select avg(altura) from gafanhotos; -- Valor da média

SELECT altura from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);

