-- 1 
SELECT 
Nome,
Ano
FROM Filmes;

-- 2
SELECT 
Nome,
Ano
FROM Filmes
ORDER BY Ano;

-- 3 
SELECT 
*
FROM Filmes
WHERE nome = 'de volta para o futuro';

-- 4
SELECT 
*
FROM Filmes
WHERE ano = 1997;

-- 5
SELECT 
*
FROM Filmes
WHERE ano > 2000;

-- 6
SELECT 
*
FROM Filmes
WHERE DURACAO > 100 AND duracao < 150
ORDER BY duracao;

-- 7
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(duracao) DESC;

-- 8
SELECT 
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT 
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
SELECT 
    f.Nome,
    g.Genero
FROM Filmes f 
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- 11
SELECT 
    f.Nome,
    g.Genero
FROM Filmes f 
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério';

-- 12
SELECT 
    f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON a.Id = ef.IdAtor;
