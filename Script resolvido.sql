--DESAFIO 1 = Buscar o nome e ano dos filmes.
SELECT Nome, Ano 
FROM Filmes

--DESAFIO 2 = Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano.
SELECT 	Nome, Ano 
FROM Filmes 
ORDER BY Ano ASC

--DESAFIO 3 = Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração.
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--DESAFIO 4 = Buscar os filmes lançados em 1997.
SELECT * 
FROM Filmes
WHERE Ano = 1997

--DESAFIO 5 = Buscar os filmes lançados APÓS o ano 2000.
SELECT * 
FROM Filmes
WHERE Ano > 2000


--DESAFIO 6 = Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente.
SELECT * 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--DESAFIO 7 = Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente.
SELECT
	Ano,
	COUNT(*) QtdeFilmesPorAno
FROM Filmes
GROUP BY Ano
ORDER BY QtdeFilmesPorAno DESC;

--DESAFIO 8 = Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome.
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

--DESAFIO 9 = Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome.
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--DESAFIO 10 = Buscar o nome do filme e o gênero.
SELECT F.Nome, G.Genero 
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id

--DESAFIO 11 = Buscar o nome do filme e o gênero do tipo "Mistério".
SELECT F.Nome, G.Genero 
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

--DESAFIO 12 = Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel.
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM ElencoFilme EF
INNER JOIN Filmes F ON EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id

