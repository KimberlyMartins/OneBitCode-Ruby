
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

#                     CONSULTAR USANDO MAIS DE UMA CONDIÇÃO
Aqui a busca vai ser realizada de acordo com ambas as condições WHERE e AND.
SELECT * FROM + nome da tabela WHERE nome da coluna + = +  'dado procurado' + AND + nome da coluna (< ou >) + número procurado;
=begin
coffee_shop=# SELECT * FROM stock_ingredients WHERE category = 'Protein' AND quantity > 20;
 id | name | category | quantity
----+------+----------+----------
  1 | Eggs | Protein  |       45
  4 | Ham  | Protein  |       40
(2 rows)
=end

