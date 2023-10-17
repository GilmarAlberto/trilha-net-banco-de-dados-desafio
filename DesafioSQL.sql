-- 1 - Buscar o nome e ano dos filmes
SELECT nome, ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
-- Observacao: Na descrição não pede duração mas na imagem está duração. Situação ambigua.
SELECT nome, ano
FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT nome, ano, duracao
FROM Filmes
WHERE nome = 'De Volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT * 
FROM Filmes
WHERE ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT *
FROM Filmes
WHERE ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT *
FROM Filmes
WHERE Duracao between 101 and 149 
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY ANO
ORDER BY QuantidadeFilmes DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNoe

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT a.Nome, c.Genero
  FROM Filmes a, Filmesgenero b, Generos c 
 WHERE a.Id = b.IdFilme and c.Id = b.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT a.Nome, c.Genero
  FROM Filmes a, Filmesgenero b, Generos c 
 WHERE a.Id = b.IdFilme and c.Id = b.IdGenero and c.Genero = 'Mistério'

 -- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT c.PrimeiroNome, c.UltimoNome, b.Papel
  FROM Filmes a, ElencoFilme b, Atores c
 WHERE a.Id = b.IdFilme and c.Id = b.IdAtor