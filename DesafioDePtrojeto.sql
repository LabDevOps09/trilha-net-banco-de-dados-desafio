-- 1a consulta, retorna somente nome e ano OK
SELECT Nome, Ano FROM Filmes;

-- 2a consulta, retorna nome e ano ordenado por ordem crescente do ano OK
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

-- 3a consulta, buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e duracao OK
SELECT * FROM Filmes WHERE Nome='De Volta para o Futuro';

-- 4a consulta, buscar os filmes lancados em 1997 OK
SELECT * FROM Filmes WHERE Ano = 1997;

-- 5a consulta, buscar os filmes lancados APOS o ano 2000 OK
SELECT * FROM Filmes WHERE Ano > 2000;

-- 6a consulta, buscar os filmes com duracao maior que 100 e menor que 150, em ordem crescente OK
SELECT * FROM Filmes WHERE Duracao BETWEEN 100 AND 150 ORDER BY Duracao;

-- 7a consulta, buscar a quantidade de filmes lancadas no ano, agrupando por ano e ordenando em ordem decrescente OK
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8a consulta, buscar os atores do genero masculino, retornando PrimeiroNome e UltimoNome OK
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9a consulta, buscar os atores do genero feminino, retornando PrimeiroNome e UltimoNome OK
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F';

-- 10a consulta, buscar nome do filme e genero OK
SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

-- 11a consulta, buscar o nome do filme e o genero do tipo misterio OK
SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério';

-- 12a consulta, buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel OK
SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;
