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

CREATE TABLE student_courses (       #TABELA DE JUNÇÃO
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students (id),
    FOREIGN KEY (course_id) REFERENCES courses (id)
);