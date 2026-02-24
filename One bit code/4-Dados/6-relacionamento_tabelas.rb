                                   JOIN
Vamos conhecer um conceito importante no relacionamento entre tabelas, o JOIN.
O JOIN é justamente o que conecta tabelas diferentes em uma consulta SQL, permitindo que você traga dados relacionados em uma única visão. Ele funciona comparando colunas (normalmente chaves primárias e estrangeiras) entre tabelas. Serve para conseguir obter dados de tabelas relacionadas em uma única consulta. 

Na tabela 1:1 : Vamos experimentar obter os dados dos funcionários junto com seus respectivos endereços

SELECT * FROM employees JOIN addresses ON employees.id = addresses.employee_id;
#(Selecionar tudo da tabela employees e fazer a JUNÇÃO com a tabela endereços NA CONDIÇAO (ON) onde employees id for igual a chave estrangeira de addresses id)

=begin
aula_relacionamento_tabelas=# select * from employees JOIN addresses ON employees.id = addresses.employee_id;;
 id |     name     |   phone   | departament_id | id | street | number | complement |    city    | employee_id
----+--------------+-----------+----------------+----+--------+--------+------------+------------+-------------
  1 | Clark Kent   | 1111-1111 |              1 |  1 | Rua A  |        |            | Metropolis |           1
  2 | Bruce Wayne  | 2222-2222 |              2 |  2 | Rua B  |        |            | Gotham     |           2
  3 | Diana Prince | 3333-3333 |              3 |  3 | Rua C  |        |            | Themyscira |           3
(3 linhas)
=end

O mesmo vale para o relacionamento um-para-muitos 1:n :  repare que o cuidado na consulta com qual é a tabela consultada e qual é a tabela da junção é apenas por uma questão de organização, ambos os resultados são os mesmos, mas organizados de forma diferente.

SELECT * FROM employees JOIN departaments ON employees.departament_id = departaments.id;

=begin
(Selecionar tudo da tabela employees e fazer a JUNÇÃO com a tabela departaments NA CONDIÇAO (ON) onde employees id for igual a chave estrangeira de departaments id)

aula_relacionamento_tabelas=# SELECT * FROM employees JOIN departaments ON employees.departament_id = departaments.id;
 id |     name     |   phone   | departament_id | id |     name
----+--------------+-----------+----------------+----+--------------
  1 | Clark Kent   | 1111-1111 |              1 |  1 | Imprensa
  2 | Bruce Wayne  | 2222-2222 |              2 |  2 | InvestigaþÒo
  3 | Diana Prince | 3333-3333 |              3 |  3 | Diplomacia
  4 | John Jones   | 4444-4444 |              2 |  2 | InvestigaþÒo
(4 linhas)
=end


-- Ou podemos obter os departamentos com uma junção com a tabela de funcionários

=begin
aula_relacionamento_tabelas=# SELECT * FROM departaments JOIN employees ON employees.departament_id = departaments.id;
 id |     name     | id |     name     |   phone   | departament_id
----+--------------+----+--------------+-----------+----------------
  1 | Imprensa     |  1 | Clark Kent   | 1111-1111 |              1
  2 | InvestigaþÒo |  2 | Bruce Wayne  | 2222-2222 |              2
  3 | Diplomacia   |  3 | Diana Prince | 3333-3333 |              3
  2 | InvestigaþÒo |  4 | John Jones   | 4444-4444 |              2
(4 linhas)
=end

Por fim, também podemos customizar nossa consulta ao identificar as tabelas e colunas da seguinte forma:
=begin
aula_relacionamento_tabelas=# SELECT employees.id AS ID,employees.name AS Funcionário,employees.phone AS Telefone,departaments.name AS Departamento FROM employees JOIN departaments ON employees.departament_id = departaments.id;
 id | funcionário  | telefone  | departamento
----+--------------+-----------+--------------
  1 | Clark Kent   | 1111-1111 | Imprensa
  2 | Bruce Wayne  | 2222-2222 | InvestigaþÒo
  3 | Diana Prince | 3333-3333 | Diplomacia
  4 | John Jones   | 4444-4444 | InvestigaþÒo
(4 linhas)
=end

                             RELACIONAMENTO MUITOS PARA MUITOS (N :N )
A linha de uma tabela pode estar associada a várias linhas da outra tabela e vice e versa. A implementação EXIGE 
a criação de uma tabela intermediária (tabela de junção) que contém as chaves estrangeiras de ambas as tabelas.
(Obs.: uma forma comum de nomear as tabelas intermediárias é juntando os nomes das tabelas que estão sendo relacionadas, por exemplo, student_courses)

EX: Um aluno pode estar em várias disciplinas e cada disciplina pode ter vários alunos. 

No exemplo prático vamos criar as tabelas students e courses para simular um relacionamento muitos-para-muitos, e criar uma tabela intermediária que irá conter os IDs de ambas as tabelas que estamos juntando, permitindo consultar os dados através dela. 

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE student_courses (
student_id INT,
course_id INT,
PRIMARY KEY (student_id, course_id),
FOREIGN KEY (student_id) REFERENCES students (id),
FOREIGN KEY (course_id) REFERENCES courses (id)
);


- Inserimos os dados em cada tabela separadamente 
INSERT INTO students (name) VALUES ('Peter'), ('Matt'), ('Tony'), ('Reed');
INSERT INTO courses (name) VALUES ('Fotografia'), ('Direito'), ('Física'), ('Engenharia');
=begin
aula_relacionamento_tabelas=# SELECT * FROM students;
 id | name
----+-------
  1 | Peter
  2 | Matt
  3 | Tony
  4 | Reed
(4 linhas)

aula_relacionamento_tabelas=# SELECT * FROM courses;
 id |    name
----+------------
  1 | Fotografia
  2 | Direito
  3 | FÝsica
  4 | Engenharia
(4 linhas)
=end

- E só depois podemos inserir dados na tabela de junção (intermediária)

INSERT INTO student_courses (student_id, course_id) VALUES
    (1, 1),
    (1, 3),
    (2, 2),
    (3, 3),
    (3, 4),
    (4, 3),
    (4, 4);

=begin
aula_relacionamento_tabelas=# SELECT * FROM student_courses;
 student_id | course_id
------------+-----------
          1 |         1
          1 |         3
          2 |         2
          3 |         3
          3 |         4
          4 |         3
          4 |         4
(7 linhas)
=end
Após o preenchimento dos dados podemos começar a realizar as buscas com o SQL

SELECT *
FROM student_courses
JOIN students ON student_courses.student_id = students.id
JOIN courses ON student_courses.course_id = courses.id;

=begin
aula_relacionamento_tabelas=# SELECT * FROM student_courses JOIN students ON student_courses.student_id = students.id JOIN courses ON student_courses.course_id = courses.id;
 student_id | course_id | id | name  | id |    name
------------+-----------+----+-------+----+------------
          1 |         1 |  1 | Peter |  1 | Fotografia
          1 |         3 |  1 | Peter |  3 | FÝsica
          2 |         2 |  2 | Matt  |  2 | Direito
          3 |         3 |  3 | Tony  |  3 | FÝsica
          3 |         4 |  3 | Tony  |  4 | Engenharia
          4 |         3 |  4 | Reed  |  3 | FÝsica
          4 |         4 |  4 | Reed  |  4 | Engenharia
(7 linhas)
=end

Podemos nomear as buscas para facilitar o entendimento das informações

SELECT
   students.id AS ID_Estudante,
   students.name AS Estudante,
   courses.id AS ID_Curso,
   courses.name AS Curso
FROM
    student_courses
JOIN students ON student_courses.student_id = students.id
JOIN courses ON student_courses.course_id = courses.id;
=begin
 id_estudante | estudante | id_curso |   curso
--------------+-----------+----------+------------
            1 | Peter     |        1 | Fotografia
            1 | Peter     |        3 | FÝsica
            2 | Matt      |        2 | Direito
            3 | Tony      |        3 | FÝsica
            3 | Tony      |        4 | Engenharia
            4 | Reed      |        3 | FÝsica
            4 | Reed      |        4 | Engenharia
(7 linhas)
=end


                               INTEGRIDADE REFERENCIAL 
A integridade referencial garante que os relacionamentos entre tabelas em um banco de dados SQL sejam sempre válidos. Isso significa que uma chave estrangeira (foreign key) em uma tabela filha deve sempre apontar para uma chave primária existente na tabela pai.
Por padrão, quando você cria uma chave estrangeira em SQL sem especificar nenhuma ação de exclusão (ON DELETE), o comportamento geralmente é equivalente a RESTRICT ou NO ACTION, dependendo do banco de dados.
Então, se você não definir nada, o banco de dados não vai apagar os dados, ele vai bloquear a exclusão para manter a integridade referencial!!!

Para alterar as configurações de integridade usamos o ON DELETE e o ON UPDATE. Essas configurações especificam qual comportamento deverá ser executado em caso de exclusão ou atualização do registro referenciado na chave estrangeira.
Elas definem o comportamento da chave estrangeira e ajudam a manter a integridade referencial. Usamos as variações de ON DELETE e UPDATE direto na criação das tabelas para que possam ser alteradas depois.

 ON DELETE controla o que acontece quando o registro pai é removido.
 ON UPDATE controla o que acontece quando a chave primária do pai é alterada.

Para garantir a integridade, temos comandos usados juntos ao delete e update, são eles:

CASCADE: remove ou atualiza automaticamente as linhas da tabela contendo a referência quando a linha correspondente é removida ou atualizada na tabela original.
- ON DELETE CASCADE → ao excluir o pai, os filhos também são excluídos.
- ON UPDATE CASCADE → ao atualizar a chave primária do pai, os filhos são atualizados automaticamente.

RESTRICT: impede a remoção ou atualização de uma linha na tabela original se existem linhas correspondentes na tabela que a referencia (comportamento padrão).
- ON DELETE RESTRICT → impede excluir o pai se houver filhos relacionados.
- ON UPDATE RESTRICT → impede atualizar a chave primária do pai se houver filhos relacionados.

SET NULL: define a coluna de chave estrangeira como NULL quando a linha correspondente na tabela original é removida ou atualizada (a coluna deve ser capaz de aceitar valores nulos para essa opção ser usada).
- ON DELETE SET NULL → ao excluir o pai, a chave estrangeira dos filhos vira NULL.
- ON UPDATE SET NULL → ao atualizar o pai, os filhos ficam com NULL na chave estrangeira.

SET DEFAULT: define a coluna de chave estrangeira com o seu valor padrão quando a linha correspondente na tabela original é removida ou atualizada (a coluna deve ter um valor padrão configurado para essa opção ser usada).
- ON DELETE SET DEFAULT → ao excluir o pai, os filhos recebem um valor padrão definido.
- ON UPDATE SET DEFAULT → ao atualizar o pai, os filhos recebem o valor padrão na chave estrangeira.

NO ACTION: similar ao RESTRICT, essa opção fará com que não seja possível remover ou atualizar um registro na tabela original, porém seu comportamento dentro de uma transação é diferente (falaremos sobre transações em aulas futuras), a verificação de integridade apenas ocorrerá no final da transação e não imediatamente.
- ON DELETE NO ACTION → semelhante ao RESTRICT, não permite excluir o pai se houver filhos.
- ON UPDATE NO ACTION → semelhante ao RESTRICT, não permite atualizar o pai se houver filhos.
- Diferença: em alguns bancos, NO ACTION pode ser adiado (deferred constraints).

RESUMINDO
- CASCADE → propaga a exclusão/atualização para os filhos.
- SET NULL → deixa filhos órfãos com NULL.
- SET DEFAULT → redireciona filhos para valor padrão.
- RESTRICT / NO ACTION → bloqueia exclusão/atualização se houver filhos.