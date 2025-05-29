
#   Continuação sobre banco de dados 


#              INSERIR DADOS NAS TABELAS CRIADAS NO BANCO DE DADOS 
 Para inserir dados nas tabelas criadas usamos o comando INSERT INTO + nome da tabela + (nomes da coluna a ser prenchida) + VALUES + (infos das colunas escolhidas) + ; e por fim executar a query.
******** STRINGS NO VALUES TEM QUE ESTAR COM ASPAS SIMPLES *********

=end
EX:
INSERT INTO clients (name, phone, adress, created_at) 
VALUES ('Kim', '41 123456789', 'Rua do Medo', '2025-05-08');

#No PgADMIN se tiver sido executada com sucesso ela retornará
# INSERT 0 1
# Query returned successfully in 168 msec.

EX:
INSERT INTO suppliers (name, phone, email, notes) 
VALUES ('Mellita do Brasil', '0800 595 0203','sim@melitta.com.br','Fornecimento de café Mellita');


#                      INSERIR MAIS DE UM ITEM AO MESMO TEMPO 
Para inserir dados nas tabelas criadas usamos o comando INSERT INTO + nome da tabela + (nomes da coluna a ser prenchida) + VALUES + (infos das colunas escolhidas) colocando vários parenteses até terminar os itens e por fim usar ;
EX:
INSERT INTO stocl_ingredients (name, category, quantity)
VALUES 
 ('Ovos', 'Proteínas', '45'),
 ('Café', 'Bebidas', 10),
 ('Queijo', 'Laticínios', '30'),
 ('Presunto', 'Proteínas', '40');

#  INSERT 0 4
# Query returned successfully in 73 msec.

                          # CONSULTAR ITENS DA TABELA
Para consultar TODOS os itens da tabela usamos o comando SELECT + * + FROM + nome da tabela;
=begin
EX:
coffee_shop=# SELECT * FROM clients;
 id | name |    phone     |   address   | created_at
----+------+--------------+-------------+------------
  1 | Kim  | 41 123456789 | Rua do Medo | 2025-05-08
(1 linha)

coffee_shop=# SELECT * FROM stock_ingredients;
 id |   name   |  category  | quantity
----+----------+------------+----------
  1 | Ovos     | ProteÝnas  |       45
  2 | CafÚ     | Bebidas    |       10
  3 | Queijo   | LaticÝnios |       30
  4 | Presunto | ProteÝnas  |       40
(4 linhas)

coffee_shop=# SELECT category FROM stock_ingredients;
  category
------------
 ProteÝnas
 Bebidas
 LaticÝnios
 ProteÝnas
(4 linhas)

coffee_shop=# SELECT name, quantity FROM stock_ingredients;
   name   | quantity
----------+----------
 Ovos     |       45
 CafÚ     |       10
 Queijo   |       30
 Presunto |       40
(4 linhas)
=end

 #                      CONSULTAR APENAS ITENS QUE ESTÃO ACABANDO
Outro comando importante do SQL e que é usado juntamente com o SELECT é o WHERE, que permite filtrarmos os resultados de acordo com uma condição.
Para consultar os itens da tabela usamos o comando SELECT + * + FROM + nome da tabela + WHERE + nome da coluna +
(< ou >) + ;
=begin
EX:
coffee_shop=# SELECT * FROM stock_ingredients WHERE quantity < 20;
 id | name | category | quantity
----+------+----------+----------
  2 | CafÚ | Bebidas  |       10
(1 linha)
=end
#                     CONSULTAR APENAS DETERMINADA COLUNA   
Para consultar os itens da tabela usamos o comando SELECT + * + FROM + nome da tabela + WHERE + nome da coluna + ;
=begin
coffee_shop=# SELECT * FROM stock_ingredients WHERE category = 'Protein';
 id | name | category | quantity
----+------+----------+----------
  1 | Eggs | Protein  |       45
  4 | Ham  | Protein  |       40
(2 rows)
=end

#                     CONSULTAR USANDO MAIS DE UMA CONDIÇÃO, OPERADOR E
Aqui a busca vai ser realizada de acordo com ambas as condições WHERE e AND. O famoso operador E.
Para essa consulta, usamos SELECT * FROM + nome da tabela WHERE nome da coluna + = 'dado procurado' + AND + nome da coluna (< ou >) + número procurado + ;
=begin
A busca vai equivaler a selecionar da tabela tal onde tal categoria seja protein E a quantidade maior que 20.

coffee_shop=# SELECT * FROM stock_ingredients WHERE category = 'Protein' AND quantity > 20;
 id | name | category | quantity
----+------+----------+----------
  1 | Eggs | Protein  |       45
  4 | Ham  | Protein  |       40
(2 rows)
=end

#               CONSULTAR USANDO MAIS DE UMA CONDIÇÃO, OPERADOR OU BUSCANDO NÚMEROS
Aqui a busca vai ser realizada de acordo com ambas as condições WHERE e OR. O famoso operador OU.
Para essa consulta, usamos SELECT * FROM + nome da tabela WHERE nome da coluna + = 'dado procurado' + OR + nome da coluna (< ou >) + número procurado + ;
=begin
A busca vai equivaler a selecionar da tabela tal onde tal categoria seja protein OU a quantidade maior que 20.

coffee_shop=# SELECT * FROM stock_ingredients WHERE category = 'Protein' OR quantity > 20; 
 id |  name  | category | quantity
----+--------+----------+----------
  1 | Eggs   | Protein  |       45
  3 | Cheese | Dairy    |       30
  4 | Ham    | Protein  |       40
(3 rows)
=end

#                     CONSULTAR USANDO MAIS DE UMA CONDIÇÃO, OPERADOR OU 
Aqui a busca vai ser realizada de acordo com ambas as condições WHERE e OR. O famoso operador OU.
Para essa consulta, usamos SELECT * FROM + nome da tabela WHERE nome da coluna = 'dado procurado' + OR + nome da coluna = 'dado procurado'+;

=begin
A busca vai equivaler a selecionar tudo da tabela stock_ingredients onde a category = Proteina OU  a category = Dairy.

coffee_shop=# SELECT * FROM stock_ingredients WHERE category = 'Protein' OR category = 'Dairy';
 id |  name  | category | quantity
----+--------+----------+----------
  1 | Eggs   | Protein  |       45
  3 | Cheese | Dairy    |       30
  4 | Ham    | Protein  |       40
(3 rows)

A busca vai equivaler a selecionar tudo da tabela stock_ingredients onde a category = Proteina OU  a category = Drinks.
coffee_shop=# SELECT * FROM stock_ingredients WHERE category = 'Protein' OR category = 'Drinks';
 id |  name  | category | quantity
----+--------+----------+----------
  1 | Eggs   | Protein  |       45
  2 | Coffee | Drinks   |       10
  4 | Ham    | Protein  |       40
(3 rows)

A busca vai equivaler a selecionar tudo da tabela stock_ingredients onde a category = Drinks OU a category = Dairy.
coffee_shop=# SELECT * FROM stock_ingredients WHERE category = 'Dairy' OR category = 'Drinks';
 id |  name  | category | quantity
----+--------+----------+----------
  2 | Coffee | Drinks   |       10
  3 | Cheese | Dairy    |       30
(2 rows)
=end

#                     CONSULTAR USANDO MAIS DE UMA CONDIÇÃO, OPERADOR IN 
Aqui a busca vai ser realizada de acordo com ambas as condições WHERE e IN. O famoso operador EM. Vai buscar os dados que esteja na lista entre parenteses, podendo ser inclusive mais de uma lista.
Para essa consulta, usamos SELECT * FROM + nome da tabela WHERE nome da coluna + IN + ('dado procurado','dado procurado');
=begin
A busca vai equivaler a selecionar tudo da tabela stock_ingredients onde a category esteja em  Protein e Dairy.
coffee_shop=# SELECT * FROM stock_ingredients WHERE category IN ('Protein', 'Dairy');
 id |  name  | category | quantity
----+--------+----------+----------
  1 | Eggs   | Protein  |       45
  3 | Cheese | Dairy    |       30
  4 | Ham    | Protein  |       40
(3 rows)
=end

 #                                CONSULTAS AVANÇADAS DOS DADOS
             ORDEM ALFABÉTICA ASC (ASCENDING - CRESCENTE) E DESC (DESCENDING - DECRESCENTE)
Para ordenar por nome baseado nas primeiras letras em ordem crescente.
SELECT * FROM Clients ORDER BY name ASC; 
=begin
A busca vai equivaler a:
selecionar tudo da tabela Clients que vai ser ordenada a categoria name de forma crescente;

coffee_shop=# SELECT * FROM clients ORDER BY name ASC;
 id |        name        |     phone     |         address         | created_at
----+--------------------+---------------+-------------------------+------------
 13 | Abigale Ofield     | (414) 2709709 | 4526 Ronald Regan Point | 2025-05-16
 17 | Bo Collie          | (163) 2032492 | 0 Straubel Terrace      | 2025-05-16
 10 | Cathrin Balcers    | (854) 2908154 | 58 Kipling Alley        | 2025-05-16
 21 | Cordie Voce        | (937) 6629079 | 767 Prairieview Road    | 2025-05-16
 22 | Easter Petrescu    | (135) 9137473 | 32 Dayton Crossing      | 2025-05-16
  6 | Erl Bumphrey       | (828) 4611193 | 279 Carey Way           | 2025-05-16
 11 | Fidelity Hurleston | (169) 2896946 | 99412 Nova Place        | 2025-05-16
  2 | Gabriel            | 12345         | Rua da Esquina          | 2025-05-14
 16 | Jessalin Duckett   | (333) 6498842 | 02 Artisan Center       | 2025-05-16
  1 | Kim                | 41 123456789  | Rua do Medo             | 2025-05-08
 12 | Lane Beggio        | (102) 4251437 | 625 Mcguire Place       | 2025-05-16
  7 | Libbey Allbut      | (780) 9682663 | 0 Tennyson Pass         | 2025-05-16
 19 | Lucian Draxford    | (827) 4937186 | 739 Toban Way           | 2025-05-16
 14 | Melisse Stappard   | (828) 1752818 | 4 Sunnyside Lane        | 2025-05-16
  4 | Nadeen Nassy       | (894) 3770999 | 344 Comanche Circle     | 2025-05-16
 20 | Philippa Sidon     | (475) 4933015 | 64985 Clarendon Way     | 2025-05-16
 18 | Raphaela Krates    | (916) 8872820 | 7798 3rd Street         | 2025-05-16
  5 | Rufe Woolforde     | (876) 3190195 | 1199 Garrison Junction  | 2025-05-16
  3 | Solis              | 4321          | Rua das Boiadeiras      | 2025-05-14
  9 | Valma Leathlay     | (988) 1855788 | 52 Pankratz Point       | 2025-05-16
  8 | Vick Saterthwait   | (858) 2707342 | 8098 Carpenter Crossing | 2025-05-16
 15 | Vito Breach        | (516) 2554781 | 86120 Towne Court       | 2025-05-16
=end

Para ordenar por nome baseado nas primeiras letras em ordem decrescente.
SELECT * FROM Clients ORDER BY name DESC;
=begin
A busca vai equivaler a:
selecionar tudo da tabela Clients que vai ser ordenada a categoria name de forma decrescente;

coffee_shop=# SELECT * FROM clients ORDER BY name DESC;
 id |        name        |     phone     |         address         | created_at
----+--------------------+---------------+-------------------------+------------
 15 | Vito Breach        | (516) 2554781 | 86120 Towne Court       | 2025-05-16
  8 | Vick Saterthwait   | (858) 2707342 | 8098 Carpenter Crossing | 2025-05-16
  9 | Valma Leathlay     | (988) 1855788 | 52 Pankratz Point       | 2025-05-16
  3 | Solis              | 4321          | Rua das Boiadeiras      | 2025-05-14
  5 | Rufe Woolforde     | (876) 3190195 | 1199 Garrison Junction  | 2025-05-16
 18 | Raphaela Krates    | (916) 8872820 | 7798 3rd Street         | 2025-05-16
 20 | Philippa Sidon     | (475) 4933015 | 64985 Clarendon Way     | 2025-05-16
  4 | Nadeen Nassy       | (894) 3770999 | 344 Comanche Circle     | 2025-05-16
 14 | Melisse Stappard   | (828) 1752818 | 4 Sunnyside Lane        | 2025-05-16
 19 | Lucian Draxford    | (827) 4937186 | 739 Toban Way           | 2025-05-16
  7 | Libbey Allbut      | (780) 9682663 | 0 Tennyson Pass         | 2025-05-16
 12 | Lane Beggio        | (102) 4251437 | 625 Mcguire Place       | 2025-05-16
  1 | Kim                | 41 123456789  | Rua do Medo             | 2025-05-08
 16 | Jessalin Duckett   | (333) 6498842 | 02 Artisan Center       | 2025-05-16
  2 | Gabriel            | 12345         | Rua da Esquina          | 2025-05-14
 11 | Fidelity Hurleston | (169) 2896946 | 99412 Nova Place        | 2025-05-16
  6 | Erl Bumphrey       | (828) 4611193 | 279 Carey Way           | 2025-05-16
 22 | Easter Petrescu    | (135) 9137473 | 32 Dayton Crossing      | 2025-05-16
 21 | Cordie Voce        | (937) 6629079 | 767 Prairieview Road    | 2025-05-16
 10 | Cathrin Balcers    | (854) 2908154 | 58 Kipling Alley        | 2025-05-16
 17 | Bo Collie          | (163) 2032492 | 0 Straubel Terrace      | 2025-05-16
 13 | Abigale Ofield     | (414) 2709709 | 4526 Ronald Regan Point | 2025-05-16
(22 rows)
=end
 
#                BUSCAR UM NUMERO LIMITADO DE ITENS 
Para evitar buscas quilométricas de dados, conseguimos fazer buscas com determinado número usando LIMIT + número de itens a serem mostrados.
SELECT * FROM Clients LIMIT 4;
=begin
A busca vai equivaler a:
selecionar tudo da tabela Clients com um limite de 4 linhas;

coffee_shop=# SELECT * FROM clients LIMIT 3;
 id |      name      |     phone     |        address         | created_at
----+----------------+---------------+------------------------+------------
  4 | Nadeen Nassy   | (894) 3770999 | 344 Comanche Circle    | 2025-05-16
  5 | Rufe Woolforde | (876) 3190195 | 1199 Garrison Junction | 2025-05-16
  6 | Erl Bumphrey   | (828) 4611193 | 279 Carey Way          | 2025-05-16
(3 rows)

A busca vai equivaler a:
selecionar tudo da tabela Clients com um limite de 3 linhas, nesse caso só tem uma então só aparece esse item;
coffee_shop=# SELECT * FROM suppliers LIMIT 3;

 id |       name        |     phone     |       email        | hiring_date |            notes
----+-------------------+---------------+--------------------+-------------+------------------------------
  1 | Mellita do Brasil | 0800 595 0203 | sim@melitta.com.br | 2025-05-08  | Fornecimento de café Mellita
(1 row)
=end

Na busca limitada também conseguimos fazer busca combinada usando o ORDER BY + LIMIT pra deixar a busca mais precisa.
=begin   
A busca vai equivaler a:
selecionar tudo da tabela Clients com o name em ordem crescente mas com limite de 4 itens;

coffee_shop=# SELECT * FROM clients ORDER BY name ASC LIMIT 4;
 id |      name       |     phone     |         address         | created_at
----+-----------------+---------------+-------------------------+------------
 13 | Abigale Ofield  | (414) 2709709 | 4526 Ronald Regan Point | 2025-05-16
 17 | Bo Collie       | (163) 2032492 | 0 Straubel Terrace      | 2025-05-16
 10 | Cathrin Balcers | (854) 2908154 | 58 Kipling Alley        | 2025-05-16
 21 | Cordie Voce     | (937) 6629079 | 767 Prairieview Road    | 2025-05-16
(4 rows)

Ou DESC
A busca vai equivaler a:
selecionar tudo da tabela Clients com o name em ordem decrescente mas com limite de 4 itens;

coffee_shop=# SELECT * FROM clients ORDER BY name DESC LIMIT 4;
 id |       name       |     phone     |         address         | created_at
----+------------------+---------------+-------------------------+------------
 15 | Vito Breach      | (516) 2554781 | 86120 Towne Court       | 2025-05-16
  8 | Vick Saterthwait | (858) 2707342 | 8098 Carpenter Crossing | 2025-05-16
  9 | Valma Leathlay   | (988) 1855788 | 52 Pankratz Point       | 2025-05-16
  3 | Solis            | 4321          | 66 Rua das Boiadeiras   | 2025-05-14
(4 rows)
=end

 #              BUSCA EM OFFSET
 A cláusula OFFSET no SQL é usada para ignorar um número específico de linhas antes de retornar as linhas no conjunto de resultados. É frequentemente usado em combinação com a cláusula LIMIT para paginar os resultados.    
 
=begin
coffee_shop=# SELECT * FROM clients ORDER BY name ASC LIMIT 4;
 id |      name       |     phone     |         address         | created_at
----+-----------------+---------------+-------------------------+------------
 13 | Abigale Ofield  | (414) 2709709 | 4526 Ronald Regan Point | 2025-05-16
 17 | Bo Collie       | (163) 2032492 | 0 Straubel Terrace      | 2025-05-16
 10 | Cathrin Balcers | (854) 2908154 | 58 Kipling Alley        | 2025-05-16
 21 | Cordie Voce     | (937) 6629079 | 767 Prairieview Road    | 2025-05-16
(4 rows

 COM O OFFSET A PAGINAÇÃO CONTINUA, MAS PULANDO O NÚMERO DE LINHAS SELECIONADAS
 A busca vai equivaler a:
selecionar tudo da tabela Clients com o name em ordem crescente mas com limite de 4 itens pulando os 4 primeiros;

coffee_shop=# SELECT * FROM clients ORDER BY name ASC LIMIT 4 OFFSET 4;
 id |        name        |     phone     |      address       | created_at
----+--------------------+---------------+--------------------+------------
 22 | Easter Petrescu    | (135) 9137473 | 32 Dayton Crossing | 2025-05-16
  6 | Erl Bumphrey       | (828) 4611193 | 279 Carey Way      | 2025-05-16
 11 | Fidelity Hurleston | (169) 2896946 | 99412 Nova Place   | 2025-05-16
  2 | Gabriel            | 12345         | 97 Rua da Esquina  | 2025-05-14
(4 rows)
=end
 
#                    BUSCA POR CONTAGEM SELECT COUNT
A função COUNT() é uma função de agregação que conta o número de linhas ou valores não nulos de uma coluna específica. Neste caso, COUNT(id) irá contar quantos valores existem na coluna id que não são nulos.
=begin  
coffee_shop=# SELECT COUNT(id) FROM clients;
 count
-------
    22
(1 row)
=end

#                      RENOMEAR A BUSCA COUNT
AS é usado para dar um nome ao resultado da consulta. Isso permite que você se referencie ao resultado da contagem como clients_count no resultado da consulta.
=begin
coffee_shop=# SELECT COUNT(id)AS clients_count FRO
M clients;
 clients_count
---------------
            22
(1 row)
=end

