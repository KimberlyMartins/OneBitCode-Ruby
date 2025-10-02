#                        CONTINUAÇÃO DADOS 
             ATUALIZAÇÃO DE DADOS E EXCLUSÃO DE LINHAS 

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