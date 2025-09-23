=begin
# Exercício 2: Banco de Filmes e Séries de TV
Crie utilizando a linguagem SQL um banco de dados com duas tabelas: **filmes** e **série de TV**. Inclua também o código de inserção dos dados usando como referência as tabelas abaixo:

- **Filmes**
    | ID | Título | Diretor | Ano | Gênero | Duração | Avaliação | Bilheteria | Custo |
    | --- | --- | --- | --- | --- | --- | --- | --- | --- |
    | 1 | Mad Max: Fury Road | George Miller | 2015 | Ação | 120 | 8.1 | 375.200.000,00 | 150.000.000,00 |
    | 2 | Star Wars | George Lucas | 1977 | Sci-Fi | 121 | 8.6 | 775.398.007,00 | 11.000.000,00 |
    | 3 | Super Mario Bros | Aaron Horvath, Michael Jelenic | 2023 | Animação | 92 | 7.3 | 1.300.000.000,00 | 100.000.000,00 |
    | 4 | Pride and Prejudice | Joe Wright | 2005 | Romance | 129 | 7.8 | 121.147.947,00 | 28.000.000,00 |
    | 5 | Back to the Future | Robert Zemeckis | 1985 | Sci-Fi | 116 | 8.5 | 381.109.762,00 | 19.000.000,00 |
    | 6 | The Godfather | Francis Ford Coppola | 1972 | Crime | 175 | 9.2 | 246.120.974,00 | 6.000.000,00 |
    | 7 | The Lord of the Rings: The Return of the King | Peter Jackson | 2003 | Fantasia | 201 | 9.0 | 1.146.030.912,00 | 94.000.000,00 |
    | 8 | Treasure Plane | Ron Clements, John Musker | 2002 | Animação | 95 | 7.2 | 109.578.115,00 | 140.000.000,00 |
    | 9 | Jurassic Park | Steven Spielberg | 1993 | Aventura | 127 | 8.1 | 1.043.580.597,00 | 63.000.000,00 |
    | 10 | About Time | Richard Curtis | 2013 | Romance | 123 | 7.8 | 87.100.000,00 | 12.000.000,00 |
    | 11 | Transformers | Michael Bay | 2007 | Ação | 144 | 7.0 | 709.709.780,00 | 150.000.000,00 |

- **Séries**
    | ID | Título | Criador | Ano | Gênero | Temporadas | Episódios | Avaliação | Canal | Situação |
    | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
    | 1 | Breaking Bad | Vince Gilligan | 2008 | Drama | 5 | 62 | 9.5 | AMC | Finalizada |
    | 2 | Game of Thrones | David Benioff, D.B. Weiss | 2011 | Fantasia | 8 | 73 | 9.3 | HBO | Finalizada |
    | 3 | Stranger Things | The Duffer Brothers | 2016 | Sci-Fi | 4 | 34 | 8.7 | Netflix | Em Andamento |
    | 4 | Friends | David Crane, Marta Kauffman | 1994 | Comédia | 10 | 236 | 8.9 | NBC | Finalizada |
    | 5 | The Office | Greg Daniels | 2005 | Comédia | 9 | 201 | 8.8 | NBC | Finalizada |
    | 6 | Vikings | Michael Hirst | 2013 | Drama Histórico | 6 | 89 | 8.5 | History Channel | Finalizada |
    | 7 | Lost | J.J. Abrams, Damon Lindelof | 2004 | Mistério | 6 | 121 | 8.4 | ABC | Finalizada |
    | 8 | Once Upon a Time | Edward Kitsis, Adam Horowitz | 2011 | Fantasia | 7 | 155 | 7.7 | ABC | Finalizada |
    | 9 | The Mentalist | Bruno Heller | 2008 | Crime | 7 | 151 | 8.1 | CBS | Finalizada |
    | 10 | Star Trek | Gene Roddenberry | 1966 | Sci-Fi | 3 | 79 | 8.4 | NBC | Finalizada |
    | 11 | Cobra Kai | Josh Heald, Jon Hurwitz, Hayden Schlossberg | 2018 | Ação | 5 | 50 | 8.6 | Netflix | Em Andamento |

Além disso, crie também as seguintes consultas:
-Toodos os filmes em ordem alfabética.
- Todos os filmes com bilheteria acima de US$ 500 milhões.
- Os IDs, nomes, anos de lançamento, gêneros, número de temporadas e episódios, avaliações e situações das séries, ordenadas da mais recente para a mais antiga.
- Todas as séries já finalizadas ordenadas da melhor avaliação para a pior.
- Todos os filmes lançados antes dos anos 2000.
- Os títulos, anos de lançamento, gênero e avaliação dos filmes ordenados por sua avaliação pela crítica.
- A média de avaliação entre os filmes de até 2 horas e a média de avaliação dos filmes de mais de 2 horas (em colunas separadas).
- Os nomes, anos de lançamento e avaliações dos filmes ordenados pelo lucro obtido, além do próprio lucro obtido (considere lucro como bilheteria - custo).
=end
                                   PARTE 1
=begin
Tentativas de resolver passo a passo
- No pgAdmin clica em database - create database 
coloca o nome desejado, ok e refresh para atualizar.

Tentativa 1
CREATE TABLE movies(
id SERIAL PRIMARY KEY,
title VARCHAR(300) NOT NULL,
director VARCHAR(250) NOT NULL,
release_year VARCHAR(5) NOT NULL,
genre VARCHAR(70) NOT NULL,              # SE PREENCHER TUDO COM NOT NULL, PRA CADASTRAR QUALQUER ITEM BVAI SER OBRIGADO
duration VARCHAR(15) NOT NULL,           # A PREENCHER TODAS AS COLUNAS, POR ISSO MELHOR EVITAR
rating VARCHAR(FLOAT) NOT NULL,
box_office VARCHAR(DECIMAL) NOT NULL,
production_cost VARCHAR(DECIMAL) NOT NULL
);

Tentativa 2
CREATE TABLE IF NOT EXISTS movies (
id SERIAL PRIMARY KEY,
title VARCHAR(300) NOT NULL,        # ASSIM SÓ O TITULO E DIRETOR SÃO OBRIGATÓRIOS NO COMEÇO
director VARCHAR(250) NOT NULL,     #  E O RESTO PODE SER PREENCHIDO DEPOIS
release_year INT,
genre VARCHAR(100),
duration INT,
rating DECIMAL,
box_office DECIMAL,
production_cost DECIMAL
)

Em decimal, precisa dizer quantos números antes e depois da vírgula ex: DECIMAL(15,2)
=end 
RESOLUÇÃO PARTE 1

CREATE TABLE IF NOT EXISTS movies (
id SERIAL PRIMARY KEY,
title VARCHAR(300) NOT NULL,
director VARCHAR(250) NOT NULL,
release_year INT,
genre VARCHAR(100),
duration INT,
rating DECIMAL(3,2),     # Em decimal, precisa dizer quantos números antes e depois da vírgula
box_office DECIMAL(15,2), # Em decimal, precisa dizer quantos números antes e depois da vírgula
production_cost DECIMAL(15,2) # Em decimal, precisa dizer quantos números antes e depois da vírgula
);
=begin
Executar query
CREATE TABLE
Query returned successfully in 289 msec.

 SELECT * FROM movies;
 id | title | director | release_year | genre | duration | rating | box_office | production_cost
----+-------+----------+--------------+-------+----------+--------+------------+-----------------
(0 linha) 
=end
                                   PARTE 2
=begin
Tentativa 1
CREATE TABLE IF NOT EXISTS series (
id SERIAL PRIMARY KEY,
title VARCHAR(300) NOT NULL,
creator VARCHAR(250) NOT NULL,
release_year INT,
genre VARCHAR(100),
seasons INT,
episodes INT,
rating DECIMAL(3,2),
channel VARCHAR(100),
situation VARCHAR(100)
);
=end

RESOLUÇÃO PARTE 2

CREATE TABLE IF NOT EXISTS tv_series (
id SERIAL PRIMARY KEY,
title VARCHAR(300) NOT NULL,
creator VARCHAR(255),
release_year INT,
genre VARCHAR(100),
seasons INT,
episodes INT,
rating DECIMAL(3,2),
network VARCHAR(100),
status VARCHAR(100)
);

=begin
CREATE TABLE

Query returned successfully in 270 msec.
 SELECT * FROM tv_series;
 id | title | creator | release_year | genre | seasons | episodes | rating | network | status
----+-------+---------+--------------+-------+---------+----------+--------+---------+--------
(0 linha)
=end
PARTE 3 
RESOLUÇÃO

INSERT INTO movies(title, director, release_year, genre, duration, rating, box_office, production_cost)
VALUES
('Mad Max: Fury Road', 'George Miller', 2015, 'Action', 120, 8.1, 375200000.00, 150000000.00),
('Star Wars', 'George Lucas', 1977, 'Sci-Fi', 121, 8.6, 775398007.00, 11000000.00),
('Super Mario Bros', 'Aaron Horvath, Michael Jelenic', 2023, 'Animation', 92, 7.3, 1300000000.00, 100000000.00),
('Pride and Prejudice', 'Joe Wright', 2005, 'Romance', 129, 7.8, 121147947.00, 28000000.00),
('Back to the Future', 'Robert Zemeckis', 1985, 'Sci-Fi', 116, 8.5, 381109762.00, 19000000.00),
('The Godfather', 'Francis Ford Coppola', 1972, 'Crime', 175, 9.2, 246120974.00, 6000000.00),
('The Lord of the Rings: The Return of the King', 'Peter Jackson', 2003, 'Fantasy', 201, 9.0, 1146030912.00, 94000000.00),
('Treasure Planet', 'Ron Clements, John Musker', 2002, 'Animation', 95, 7.2, 109578115.00, 140000000.00),
('Jurassic Park', 'Steven Spielberg', 1993, 'Adventure', 127, 8.1, 1043580597.00, 63000000.00),
('About Time', 'Richard Curtis', 2013, 'Romance', 123, 7.8, 87100000.00, 12000000.00),
('Transformers', 'Michael Bay', 2007, 'Action', 144, 7.0, 709709780.00, 150000000.00);

=begin
INSERT 0 11

Query returned successfully in 171 msec.

SELECT * FROM movies;
 id |                     title                     |            director            | release_year |   genre   | duration | rating |  box_office   | production_cost
----+-----------------------------------------------+--------------------------------+--------------+-----------+----------+--------+---------------+-----------------
  1 | Mad Max: Fury Road                            | George Miller                  |         2015 | Action    |      120 |   8.10 |  375200000.00 |    150000000.00
  2 | Star Wars                                     | George Lucas                   |         1977 | Sci-Fi    |      121 |   8.60 |  775398007.00 |     11000000.00
  3 | Super Mario Bros                              | Aaron Horvath, Michael Jelenic |         2023 | Animation |       92 |   7.30 | 1300000000.00 |    100000000.00
  4 | Pride and Prejudice                           | Joe Wright                     |         2005 | Romance   |      129 |   7.80 |  121147947.00 |     28000000.00
  5 | Back to the Future                            | Robert Zemeckis                |         1985 | Sci-Fi    |      116 |   8.50 |  381109762.00 |     19000000.00
  6 | The Godfather                                 | Francis Ford Coppola           |         1972 | Crime     |      175 |   9.20 |  246120974.00 |      6000000.00
  7 | The Lord of the Rings: The Return of the King | Peter Jackson                  |         2003 | Fantasy   |      201 |   9.00 | 1146030912.00 |     94000000.00
  8 | Treasure Planet                               | Ron Clements, John Musker      |         2002 | Animation |       95 |   7.20 |  109578115.00 |    140000000.00
  9 | Jurassic Park                                 | Steven Spielberg               |         1993 | Adventure |      127 |   8.10 | 1043580597.00 |     63000000.00
 10 | About Time                                    | Richard Curtis                 |         2013 | Romance   |      123 |   7.80 |   87100000.00 |     12000000.00
 11 | Transformers                                  | Michael Bay                    |         2007 | Action    |      144 |   7.00 |  709709780.00 |    150000000.00
(11 linhas)
=end