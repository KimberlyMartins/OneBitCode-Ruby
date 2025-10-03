#                        CONTINUAÇÃO DADOS 
                      ATUALIZAÇÃO DE DADOS E EXCLUSÃO DE LINHAS 
Para atualizar os dados de uma linha na tabela SQL é a UPDATE. 
É MUITO importante lembrar que ao usar o comando UPDATE devemos especificar a condição, senão pode causar atualizações
incorretas e comprometer toda a tabela. #(UPDATE movies SET rating=8;) esse comando sem condição compromete a tabela!!!
Para isso usamos UPDATE nome_da_tabela SET nome_coluna = valor_novo WHERE nome_coluna = valor_a_ser_modificado;
=begin
UPDATE tv_series SET status = 'Airing' WHERE status = 'Ongoing';

UPDATE 2
Query returned successfully in 168 msec.

SELECT * FROM tv_series;
 id |      title       |                   creator                   | release_year |      genre       | seasons | episodes | rating |     network     | status
----+------------------+---------------------------------------------+--------------+------------------+---------+----------+--------+-----------------+--------
  1 | Breaking Bad     | Vince Gilligan                              |         2008 | Drama            |       5 |       62 |   9.50 | AMC             | Ended
  2 | Game of Thrones  | David Benioff, D.B. Weiss                   |         2011 | Fantasy          |       8 |       73 |   9.30 | HBO             | Ended
  4 | Friends          | David Crane, Marta Kauffman                 |         1994 | Comedy           |      10 |      236 |   8.90 | NBC             | Ended
  5 | The Office       | Greg Daniels                                |         2005 | Comedy           |       9 |      201 |   8.80 | NBC             | Ended
  6 | Vikings          | Michael Hirst                               |         2013 | Historical Drama |       6 |       89 |   8.50 | History Channel | Ended
  7 | Lost             | J.J. Abrams, Damon Lindelof                 |         2004 | Mystery          |       6 |      121 |   8.40 | ABC             | Ended
  8 | Once Upon a Time | Edward Kitsis, Adam Horowitz                |         2011 | Fantasy          |       7 |      155 |   7.70 | ABC             | Ended
  9 | The Mentalist    | Bruno Heller                                |         2008 | Crime            |       7 |      151 |   8.10 | CBS             | Ended
 10 | Star Trek        | Gene Roddenberry                            |         1966 | Sci-Fi           |       3 |       79 |   8.40 | NBC             | Ended
  3 | Stranger Things  | The Duffer Brothers                         |         2016 | Sci-Fi           |       4 |       34 |   8.70 | Netflix         | Airing
 11 | Cobra Kai        | Josh Heald, Jon Hurwitz, Hayden Schlossberg |         2018 | Action           |       6 |       50 |   8.60 | Netflix         | Airing
(11 linhas)
=end
                        ATUALIZAR VARIOS CAMPOS 
Também podemos alterar vários campos por vez usando o comando UPDATE de uma forma muito comum, especificando
pelo id qual linha queremos atualizar.
=begin
UPDATE movies SET title = 'Star Wars: A New Hope', genre= 'Sci-fi/Fantasy' WHERE id = 2;

UPDATE 1
Query returned successfully in 128 msec.
=end

                 EXCLUSÃO DE DADOS 
O comando para deletar dados é semelhante ao SELECT.
É MUITO importante lembrar que ao usar o comando DELETE devemos especificar a condição (WHERE), senão pode causar atualizações incorretas e comprometer toda a tabela.
Para o delete usamos DELETE FROM nome_da_tabela WHERE nome_coluna = 'condição' ;
=begin
DELETE FROM tvseries WHERE title='The Office';

=end