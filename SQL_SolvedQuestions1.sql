--1
SELECT 
	Nome, 
	Ano 
FROM Filmes

--2
SELECT 
	Nome, 
	Ano 
FROM Filmes
ORDER BY Ano

--3
SELECT * FROM Filmes WHERE Nome='De Volta para o Futuro'

--4
SELECT * FROM Filmes WHERE Ano=1997

--5
SELECT * FROM Filmes WHERE Ano>2000

--6
SELECT * FROM Filmes 
WHERE 
	Duracao>100 
	AND 
	Duracao<150 
ORDER BY Duracao

--7
SELECT Ano,COUNT(Ano) FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC

--8
SELECT * FROM Atores
WHERE Genero='M'

--9
SELECT * FROM Atores
WHERE Genero='F'
ORDER BY PrimeiroNome

--10
SELECT Nome, Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id =FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11
SELECT Nome, Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id =FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero='Mistério'

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM ElencoFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme