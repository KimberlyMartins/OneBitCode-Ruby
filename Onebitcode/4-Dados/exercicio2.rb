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
 Crie utilizando a linguagem SQL um banco de dados com duas tabelas: **filmes** e **série de TV**
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
 Crie utilizando a linguagem SQL um banco de dados com duas tabelas: **filmes** e **série de TV**
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
Inclua também o código de inserção dos dados.

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

#Inclua também o código de inserção dos dados usando

INSERT INTO series( title, creator, release_year, genre, seasons, episodes, rating, network, status)
VALUES
('Breaking Bad', 'Vince Gilligan', 2008, 'Drama', 5, 62, 9.5, 'AMC', 'Ended'),
('Game of Thrones', 'David Benioff, D.B. Weiss', 2011, 'Fantasy', 8, 73, 9.3, 'HBO', 'Ended'),
('Stranger Things', 'The Duffer Brothers', 2016, 'Sci-Fi', 4, 34, 8.7, 'Netflix', 'Ongoing'),
('Friends', 'David Crane, Marta Kauffman', 1994, 'Comedy', 10, 236, 8.9, 'NBC', 'Ended'),
('The Office', 'Greg Daniels', 2005, 'Comedy', 9, 201, 8.8, 'NBC', 'Ended'),
('Vikings', 'Michael Hirst', 2013, 'Historical Drama', 6, 89, 8.5, 'History Channel', 'Ended'),
('Lost', 'J.J. Abrams, Damon Lindelof', 2004, 'Mystery', 6, 121, 8.4, 'ABC', 'Ended'),
('Once Upon a Time', 'Edward Kitsis, Adam Horowitz', 2011, 'Fantasy', 7, 155, 7.7, 'ABC', 'Ended'),
('The Mentalist', 'Bruno Heller', 2008, 'Crime', 7, 151, 8.1, 'CBS', 'Ended'),
('Star Trek', 'Gene Roddenberry', 1966, 'Sci-Fi', 3, 79, 8.4, 'NBC', 'Ended'),
('Cobra Kai', 'Josh Heald, Jon Hurwitz, Hayden Schlossberg', 2018, 'Action', 6, 50, 8.6, 'Netflix', 'Ongoing');

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


INSERT 0 11
Query returned successfully in 128 msec.

id |      title       |                   creator                   | release_year |      genre       | seasons | episodes | rating |     network     | status
----+------------------+---------------------------------------------+--------------+------------------+---------+----------+--------+-----------------+---------
  1 | Breaking Bad     | Vince Gilligan                              |         2008 | Drama            |       5 |       62 |   9.50 | AMC             | Ended
  2 | Game of Thrones  | David Benioff, D.B. Weiss                   |         2011 | Fantasy          |       8 |       73 |   9.30 | HBO             | Ended
  3 | Stranger Things  | The Duffer Brothers                         |         2016 | Sci-Fi           |       4 |       34 |   8.70 | Netflix         | Ongoing
  4 | Friends          | David Crane, Marta Kauffman                 |         1994 | Comedy           |      10 |      236 |   8.90 | NBC             | Ended
  5 | The Office       | Greg Daniels                                |         2005 | Comedy           |       9 |      201 |   8.80 | NBC             | Ended
  6 | Vikings          | Michael Hirst                               |         2013 | Historical Drama |       6 |       89 |   8.50 | History Channel | Ended
  7 | Lost             | J.J. Abrams, Damon Lindelof                 |         2004 | Mystery          |       6 |      121 |   8.40 | ABC             | Ended
  8 | Once Upon a Time | Edward Kitsis, Adam Horowitz                |         2011 | Fantasy          |       7 |      155 |   7.70 | ABC             | Ended
  9 | The Mentalist    | Bruno Heller                                |         2008 | Crime            |       7 |      151 |   8.10 | CBS             | Ended
 10 | Star Trek        | Gene Roddenberry                            |         1966 | Sci-Fi           |       3 |       79 |   8.40 | NBC             | Ended
 11 | Cobra Kai        | Josh Heald, Jon Hurwitz, Hayden Schlossberg |         2018 | Action           |       6 |       50 |   8.60 | Netflix         | Ongoing
(11 linhas)
=end

                                        PARTE 4
Além disso, crie também as seguintes consultas:
-Toodos os filmes em ordem alfabética.

streaming=# SELECT * FROM movies ORDER BY title ASC;

 id |                     title                     |            director            | release_year |   genre   | duration | rating |  box_office   | production_cost
----+-----------------------------------------------+--------------------------------+--------------+-----------+----------+--------+---------------+-----------------
 10 | About Time                                    | Richard Curtis                 |         2013 | Romance   |      123 |   7.80 |   87100000.00 |     12000000.00
  5 | Back to the Future                            | Robert Zemeckis                |         1985 | Sci-Fi    |      116 |   8.50 |  381109762.00 |     19000000.00
  9 | Jurassic Park                                 | Steven Spielberg               |         1993 | Adventure |      127 |   8.10 | 1043580597.00 |     63000000.00
  1 | Mad Max: Fury Road                            | George Miller                  |         2015 | Action    |      120 |   8.10 |  375200000.00 |    150000000.00
  4 | Pride and Prejudice                           | Joe Wright                     |         2005 | Romance   |      129 |   7.80 |  121147947.00 |     28000000.00
  2 | Star Wars                                     | George Lucas                   |         1977 | Sci-Fi    |      121 |   8.60 |  775398007.00 |     11000000.00
  3 | Super Mario Bros                              | Aaron Horvath, Michael Jelenic |         2023 | Animation |       92 |   7.30 | 1300000000.00 |    100000000.00
  6 | The Godfather                                 | Francis Ford Coppola           |         1972 | Crime     |      175 |   9.20 |  246120974.00 |      6000000.00
  7 | The Lord of the Rings: The Return of the King | Peter Jackson                  |         2003 | Fantasy   |      201 |   9.00 | 1146030912.00 |     94000000.00
 11 | Transformers                                  | Michael Bay                    |         2007 | Action    |      144 |   7.00 |  709709780.00 |    150000000.00
  8 | Treasure Planet                               | Ron Clements, John Musker      |         2002 | Animation |       95 |   7.20 |  109578115.00 |    140000000.00
(11 linhas)


- Todos os filmes com bilheteria acima de US$ 500 milhões.
#RESOLUÇÃO
 SELECT * FROM movies WHERE box_office >  500000000.00;

 id |                     title                     |            director            | release_year |   genre   | duration | rating |  box_office   | production_cost
----+-----------------------------------------------+--------------------------------+--------------+-----------+----------+--------+---------------+-----------------
  2 | Star Wars                                     | George Lucas                   |         1977 | Sci-Fi    |      121 |   8.60 |  775398007.00 |     11000000.00
  3 | Super Mario Bros                              | Aaron Horvath, Michael Jelenic |         2023 | Animation |       92 |   7.30 | 1300000000.00 |    100000000.00
  7 | The Lord of the Rings: The Return of the King | Peter Jackson                  |         2003 | Fantasy   |      201 |   9.00 | 1146030912.00 |     94000000.00
  9 | Jurassic Park                                 | Steven Spielberg               |         1993 | Adventure |      127 |   8.10 | 1043580597.00 |     63000000.00
 11 | Transformers                                  | Michael Bay                    |         2007 | Action    |      144 |   7.00 |  709709780.00 |    150000000.00
(5 linhas)

- Os IDs, nomes, anos de lançamento, gêneros, número de temporadas e episódios, avaliações e situações das séries, ordenadas da mais recente para a mais antiga.
=begin
TENTATIVA 1
SELECT * FROM tv_series ORDER BY release_year;
 id |      title       |                   creator                   | release_year |      genre       | seasons | episodes | rating |     network     | status
----+------------------+---------------------------------------------+--------------+------------------+---------+----------+--------+-----------------+---------
 10 | Star Trek        | Gene Roddenberry                            |         1966 | Sci-Fi           |       3 |       79 |   8.40 | NBC             | Ended
  4 | Friends          | David Crane, Marta Kauffman                 |         1994 | Comedy           |      10 |      236 |   8.90 | NBC             | Ended
  7 | Lost             | J.J. Abrams, Damon Lindelof                 |         2004 | Mystery          |       6 |      121 |   8.40 | ABC             | Ended
  5 | The Office       | Greg Daniels                                |         2005 | Comedy           |       9 |      201 |   8.80 | NBC             | Ended
  9 | The Mentalist    | Bruno Heller                                |         2008 | Crime            |       7 |      151 |   8.10 | CBS             | Ended
  1 | Breaking Bad     | Vince Gilligan                              |         2008 | Drama            |       5 |       62 |   9.50 | AMC             | Ended
  2 | Game of Thrones  | David Benioff, D.B. Weiss                   |         2011 | Fantasy          |       8 |       73 |   9.30 | HBO             | Ended
  8 | Once Upon a Time | Edward Kitsis, Adam Horowitz                |         2011 | Fantasy          |       7 |      155 |   7.70 | ABC             | Ended
  6 | Vikings          | Michael Hirst                               |         2013 | Historical Drama |       6 |       89 |   8.50 | History Channel | Ended
  3 | Stranger Things  | The Duffer Brothers                         |         2016 | Sci-Fi           |       4 |       34 |   8.70 | Netflix         | Ongoing
 11 | Cobra Kai        | Josh Heald, Jon Hurwitz, Hayden Schlossberg |         2018 | Action           |       6 |       50 |   8.60 | Netflix         | Ongoing
(11 linhas)

Tentativa 2 

 SELECT FROM tv_series  id, genre, seasons, episodes rating, status ORDER BY release_year DESC;
ERRO:  erro de sintaxe em ou próximo a "id"
LINHA 1: id |      genre       | seasons | rating | status
         ^
=end

# RESOLUÇÃO 
SELECT id, title, genre, seasons, episodes, rating, status FROM tv_series ORDER BY release_year DESC;
 id |      title       |      genre       | seasons | rating | status
----+------------------+------------------+---------+--------+---------
 11 | Cobra Kai        | Action           |       6 |     50 | Ongoing
  3 | Stranger Things  | Sci-Fi           |       4 |     34 | Ongoing
  6 | Vikings          | Historical Drama |       6 |     89 | Ended
  2 | Game of Thrones  | Fantasy          |       8 |     73 | Ended
  8 | Once Upon a Time | Fantasy          |       7 |    155 | Ended
  1 | Breaking Bad     | Drama            |       5 |     62 | Ended
  9 | The Mentalist    | Crime            |       7 |    151 | Ended
  5 | The Office       | Comedy           |       9 |    201 | Ended
  7 | Lost             | Mystery          |       6 |    121 | Ended
  4 | Friends          | Comedy           |      10 |    236 | Ended
 10 | Star Trek        | Sci-Fi           |       3 |     79 | Ended
(11 linhas)

- Todas as séries já finalizadas ordenadas da melhor avaliação para a pior.
=begin
Tentativa 1 
streaming=# SELECT * FROM tv_series WHERE status 'Ended';
ERRO:  tipo "status" não existe
LINHA 1: SELECT * FROM tv_series WHERE status 'Ended'; 
^

Tentativa 2 
SELECT * FROM tv_series WHERE status = 'Ended';
 id |      title       |           creator            | release_year |      genre       | seasons | episodes | rating |     network     | status
----+------------------+------------------------------+--------------+------------------+---------+----------+--------+-----------------+--------
  1 | Breaking Bad     | Vince Gilligan               |         2008 | Drama            |       5 |       62 |   9.50 | AMC             | Ended
  2 | Game of Thrones  | David Benioff, D.B. Weiss    |         2011 | Fantasy          |       8 |       73 |   9.30 | HBO             | Ended
  4 | Friends          | David Crane, Marta Kauffman  |         1994 | Comedy           |      10 |      236 |   8.90 | NBC             | Ended
  5 | The Office       | Greg Daniels                 |         2005 | Comedy           |       9 |      201 |   8.80 | NBC             | Ended
  6 | Vikings          | Michael Hirst                |         2013 | Historical Drama |       6 |       89 |   8.50 | History Channel | Ended
  7 | Lost             | J.J. Abrams, Damon Lindelof  |         2004 | Mystery          |       6 |      121 |   8.40 | ABC             | Ended
  8 | Once Upon a Time | Edward Kitsis, Adam Horowitz |         2011 | Fantasy          |       7 |      155 |   7.70 | ABC             | Ended
  9 | The Mentalist    | Bruno Heller                 |         2008 | Crime            |       7 |      151 |   8.10 | CBS             | Ended
 10 | Star Trek        | Gene Roddenberry             |         1966 | Sci-Fi           |       3 |       79 |   8.40 | NBC             | Ended
(9 linhas)
=end
# RESOLUÇÃO
SELECT * FROM tv_series WHERE status = 'Ended'ORDER BY rating DESC;
 id |      title       |           creator            | release_year |      genre       | seasons | episodes | rating |     network     | status
----+------------------+------------------------------+--------------+------------------+---------+----------+--------+-----------------+--------
  1 | Breaking Bad     | Vince Gilligan               |         2008 | Drama            |       5 |       62 |   9.50 | AMC             | Ended
  2 | Game of Thrones  | David Benioff, D.B. Weiss    |         2011 | Fantasy          |       8 |       73 |   9.30 | HBO             | Ended
  4 | Friends          | David Crane, Marta Kauffman  |         1994 | Comedy           |      10 |      236 |   8.90 | NBC             | Ended
  5 | The Office       | Greg Daniels                 |         2005 | Comedy           |       9 |      201 |   8.80 | NBC             | Ended
  6 | Vikings          | Michael Hirst                |         2013 | Historical Drama |       6 |       89 |   8.50 | History Channel | Ended
  7 | Lost             | J.J. Abrams, Damon Lindelof  |         2004 | Mystery          |       6 |      121 |   8.40 | ABC             | Ended
 10 | Star Trek        | Gene Roddenberry             |         1966 | Sci-Fi           |       3 |       79 |   8.40 | NBC             | Ended
  9 | The Mentalist    | Bruno Heller                 |         2008 | Crime            |       7 |      151 |   8.10 | CBS             | Ended
  8 | Once Upon a Time | Edward Kitsis, Adam Horowitz |         2011 | Fantasy          |       7 |      155 |   7.70 | ABC             | Ended
(9 linhas)
 
- Todos os filmes lançados antes dos anos 2000.
=begin
TENTATIVA 1 
streaming=# SELECT * FROM movies WHERE year_release > 2000;
ERRO:  coluna "year_release" não existe
=end
#RESOLUÇÃO 
 SELECT * FROM movies WHERE release_year < 2000;
 id |       title        |       director       | release_year |   genre   | duration | rating |  box_office   | production_cost
----+--------------------+----------------------+--------------+-----------+----------+--------+---------------+-----------------
  2 | Star Wars          | George Lucas         |         1977 | Sci-Fi    |      121 |   8.60 |  775398007.00 |     11000000.00
  5 | Back to the Future | Robert Zemeckis      |         1985 | Sci-Fi    |      116 |   8.50 |  381109762.00 |     19000000.00
  6 | The Godfather      | Francis Ford Coppola |         1972 | Crime     |      175 |   9.20 |  246120974.00 |      6000000.00
  9 | Jurassic Park      | Steven Spielberg     |         1993 | Adventure |      127 |   8.10 | 1043580597.00 |     63000000.00
(4 linhas)
- Os títulos, anos de lançamento, gênero e avaliação dos filmes ordenados por sua avaliação pela crítica.
=begin
TENTATIVA 1 
SELECT title, release_year, genre, rating ORDER BY rating DESC;
ERRO:  coluna "title" não existe
LINHA 1: SELECT title, release_year, genre, rating ORDER BY rating DE...
=end
#RESOLUÇÃO
SELECT title, release_year, genre, rating FROM movies ORDER BY rating DESC;
                     title                     | release_year |   genre   | rating
-----------------------------------------------+--------------+-----------+--------
 The Godfather                                 |         1972 | Crime     |   9.20
 The Lord of the Rings: The Return of the King |         2003 | Fantasy   |   9.00
 Star Wars                                     |         1977 | Sci-Fi    |   8.60
 Back to the Future                            |         1985 | Sci-Fi    |   8.50
 Mad Max: Fury Road                            |         2015 | Action    |   8.10
 Jurassic Park                                 |         1993 | Adventure |   8.10
 About Time                                    |         2013 | Romance   |   7.80
 Pride and Prejudice                           |         2005 | Romance   |   7.80
 Super Mario Bros                              |         2023 | Animation |   7.30
 Treasure Planet                               |         2002 | Animation |   7.20
 Transformers                                  |         2007 | Action    |   7.00
(11 linhas)

- A média de avaliação entre os filmes de até 2 horas e a média de avaliação dos filmes de mais de 2 horas (em colunas separadas).
=begin

SELECT AVG(rating) AS media FROM movies WHERE duration >= 120;
       media
--------------------
 8.2000000000000000
(1 linha)

 SELECT AVG(rating) AS medias FROM movies WHERE duration <= 120;
       media
--------------------
 7.7750000000000000
(1 linha)
=end
# RESOLUÇÃO 
SELECT 
AVG(CASE WHEN duration <= 120 THEN rating ELSE NULL END ) AS avg_rating_up_to_2_hours,
AVG(CASE WHEN duration > 120 THEN rating ELSE NULL END) AS avg_rating_over_2_hours 
FROM movies;

 avg_rating_up_to_2_hours | avg_rating_over_2_hours
--------------------------+-------------------------
       7.7750000000000000 |      8.2142857142857143
(1 linha)

- Os nomes, anos de lançamento e avaliações dos filmes ordenados pelo lucro obtido, além do próprio lucro obtido (considere lucro como bilheteria - custo).
=begin
 SELECT title, release_year, rating FROM movies ORDER BY box_office ASC;
                     title                     | release_year | rating
-----------------------------------------------+--------------+--------
 About Time                                    |         2013 |   7.80
 Treasure Planet                               |         2002 |   7.20
 Pride and Prejudice                           |         2005 |   7.80
 The Godfather                                 |         1972 |   9.20
 Mad Max: Fury Road                            |         2015 |   8.10
 Back to the Future                            |         1985 |   8.50
 Transformers                                  |         2007 |   7.00
 Star Wars                                     |         1977 |   8.60
 Jurassic Park                                 |         1993 |   8.10
 The Lord of the Rings: The Return of the King |         2003 |   9.00
 Super Mario Bros                              |         2023 |   7.30
(11 linhas)

SELECT SUM (box_office - production_cost) AS total_cost FROM movies;
  total_cost
---------------
 5521976094.00
(1 linha)
=end
# RESOLUÇÃO
SELECT id, title, release_year, rating, (box_office - production_cost) AS profit FROM movies ORDER BY profit DESC;
 id |                     title                     | release_year | rating |    profit
----+-----------------------------------------------+--------------+--------+---------------
  3 | Super Mario Bros                              |         2023 |   7.30 | 1200000000.00
  7 | The Lord of the Rings: The Return of the King |         2003 |   9.00 | 1052030912.00
  9 | Jurassic Park                                 |         1993 |   8.10 |  980580597.00
  2 | Star Wars                                     |         1977 |   8.60 |  764398007.00
 11 | Transformers                                  |         2007 |   7.00 |  559709780.00
  5 | Back to the Future                            |         1985 |   8.50 |  362109762.00
  6 | The Godfather                                 |         1972 |   9.20 |  240120974.00
  1 | Mad Max: Fury Road                            |         2015 |   8.10 |  225200000.00
  4 | Pride and Prejudice                           |         2005 |   7.80 |   93147947.00
 10 | About Time                                    |         2013 |   7.80 |   75100000.00
  8 | Treasure Planet                               |         2002 |   7.20 |  -30421885.00
(11 linhas)
 