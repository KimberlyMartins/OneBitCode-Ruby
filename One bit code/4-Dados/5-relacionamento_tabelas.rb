                    RELACIONAMENTO ENTRE TABELAS
Relacionamentos também são chamados de associações, e são formas de vincularmos os dados de uma tabela aos dados de outra tabela.
As relações são baseadas em campos comuns de mais de uma tabela, envolvendo muitas vezes CHAVES PRIMÁRIAS e CHAVES ESTRANGEIRAS.
CHAVE PRIMÁRIA(Primary Key ou PK) = Coluna ou conjunto de colunas que identificam unicamente cada linha de uma tabela. Há três requisitos para uma chave primária: não pode ser nula, ele deve ser exclusiva e haver apenas uma definida por tabela
Uma chave estrangeira (Foreign Key ou FK) =  Coluna ou conjunto de colunas que estabelecem uma ligação entre duas tabelas.
=begin
EX:             Temos 2 tabelas: Clientes e Endereços, o relacionamento permite que associemos uma linha
da tabela de usuários a um endereço específico
USUARIO


ENDEREÇO
=end

Existem três tipos de relacionamento,  um para um (1:1), um para muitos (1:n), e muitos para muitos (n:n).

                                         UM PARA UM (1:1)
Cada linha de uma tabela está relacionada com o máximo de uma linha de outra tabela.
Exemplo: Cada pessoa tem exatamente um passaporte, e cada passaporte pertence a uma única pessoa.

=begin
Um usuário possui um endereço, e um endereço só pode pertencer a um usuário.
=end

Para essa aula criamos um novo banco de dados, chamado aula_relacionamento_tabelas no pg admin e 
vamos abrir 2 querys e criar uma tabela em cada 
- query 1
CREATE TABLE employees (
id SERIAL PRIMARY KEY,
NAME VARCHAR(255) NOT NULL,
phone VARCHAR(30)
);

- query 2 
CREATE TABLE addresses (
id SERIAL PRIMARY KEY,
street VARCHAR(255) NOT NULL,
number VARCHAR(10),
complement VARCHAR(255),
city VARCHAR(255) NOT NULL,
employee_id INT UNIQUE, #nome da tabela+coluna que esta referenciando, tipo de dado e UNIQUE p garantir esclusividade
FOREIGN KEY (employee_id) REFERENCES employees (id) #a fk referencia nome da tabela e coluna 
);

=begin
 employee_id INT - cria uma coluna chamada employee_id que guarda números inteiros, essa coluna vai ser usada para ligar a tabela atual (addresses) com a tabela employees.
 UNIQUE - Garante que não pode haver valores repetidos nessa coluna. Assim, cada funcionário (employee) só pode aparecer uma vez na tabela addresses.Isso é o que transforma o relacionamento em 1:1 (um funcionário ↔ um endereço).
FOREIGN KEY (employee_id) REFERENCES employees(id) - Define que employee_id é uma chave estrangeira (FK). Essa FK aponta para a coluna id da tabela employees. Ou seja: o valor de employee_id deve existir na tabela employees.
 Isso cria o vínculo entre as duas tabelas.

=end
- O campo employee_id é uma FK que aponta para employees.id
- employee_id está marcado como UNIQUE, garantindo que um funcionário só pode ter um endereço e que um endereço pertença a apenas um funcionário.



                             UM PARA MUITOS (1:n)
Um registro em uma tabela (tabela principal/pai) pode estar associado a zero, um ou vários registros em outra tabela (tabela relacionada/filha).
Exemplo: Um cliente pode ter vários pedidos, mas cada pedido pertence a apenas um cliente.

 Nesse cenário, criaremos uma tabela de departamentos, onde cada funcionário só pode pertencer a um departamento por vez, mas um departamento é composto de vários funcionários. Para criar uma tabela com esse relacionamento utilizaremos uma estrutura muito parecida. Comece criando a tabela de departamentos:

 CREATE TABLE employees (
id SERIAL PRIMARY KEY,
NAME VARCHAR(255) NOT NULL,
phone VARCHAR(30)
);

 - Crie uma tabela de departamentos
CREATE TABLE departments (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

ALTER TABLE employees ADD COLUMN departament_id INT;
ALTER TABLE employees ADD CONSTRAINT fk_departament 
FOREIGN KEY (departament_id) REFERENCES departaments(id);

=begin
 CREATE TABLE employees (
id SERIAL PRIMARY KEY,
NAME VARCHAR(255) NOT NULL,
phone VARCHAR(30),
departament_id INT,
fk_departament 
FOREIGN KEY (departament_id) REFERENCES departaments(id);
); 
=end


Ou podemos simplesmente excluir a nossa tabela de funcionários e criá-la novamente: Atenção! Muito cuidado ao fazer isso em um banco de dados real, pois isso excluirá todos os dados da tabela já existente. Esse é apenas um exemplo para mostrar como seria a criação de uma nova tabela do zero já com a chave estrangeira, mas nunca deve ser utilizado em uma tabela já existente. Para isso, use o método anterior com o ALTER TABLE.
-- Excluimos a tabela
DROP TABLE employees;

-- E a criamos novamente já definindo a chave estrangeira na criação
CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	phone VARCHAR(20),
	
	departament_id INT NOT NULL,
	FOREIGN KEY (department_id) REFERENCES departaments (id)
);

Antes de finalizar a aula, vamos inserir e consultar alguns dados nessas tabelas para ver como elas são usadas na prática. Comece inserindo dados de funcionários, endereços e departamentos:

-- Comece pelos departamentos, a tabela mais simples 
INSERT INTO departaments (name) VALUES ('Imprensa'), ('Investigação'), ('Diplomacia');

-- Confira os IDs de cada um para usarmos na hora de inserir funcionários
SELECT * FROM departaments;
=begin
aula_relacionamento_tabelas=# SELECT * FROM departaments;
 id |     name
----+--------------
  1 | Imprensa
  2 | InvestigaþÒo
  3 | Diplomacia
(3 linhas)
=end 

-- Insira os funcionários um por um ou mais de um ao mesmo tempo 
# INDIVIDUALMENTE
INSERT INTO employees (name, phone, department_id) 
	VALUES ('Clark Kent', '1111-1111', 1);

INSERT INTO employees (name, phone, department_id)
	VALUES ('Bruce Wayne', '2222-2222', 2);

INSERT INTO employees (name, phone, department_id)
	VALUES ('Diana Prince', '3333-3333', 3);

# OU MAIS DE UM AO MESMO TEMPO
INSERT INTO employees (name, phone, departament_id) 
VALUES 
('Clark Kent', '1111-1111', 1),
('Bruce Wayne', '2222-2222', 2),
('Diana Prince', '3333-3333', 3);

=begin
aula_relacionamento_tabelas=# select * from employees;
 id |     name     |   phone   | departament_id
----+--------------+-----------+----------------
  1 | Clark Kent   | 1111-1111 |              1
  2 | Bruce Wayne  | 2222-2222 |              2
  3 | Diana Prince | 3333-3333 |              3
(3 linhas)
=end

No relacionamento para muitos, podemos adicionar mais de uma info a um departamento, aqui vamos adicionar outro funcionário com a mesma departament id 

INSERT INTO employees (name, phone, department_id)
	VALUES ('John Jones', '4444-4444', 2);

=begin
aula_relacionamento_tabelas=# select * from employees;
 id |     name     |   phone   | departament_id
----+--------------+-----------+----------------
  1 | Clark Kent   | 1111-1111 |              1
  2 | Bruce Wayne  | 2222-2222 |              2
  3 | Diana Prince | 3333-3333 |              3
  4 | John Jones   | 4444-4444 |              2
(4 linhas)

Agora podemos ver 2 pessoas com a mesma id 
=end

-- A partir disso, insira os endereços
# INDIVIDUALMENTE
INSERT INTO addresses (street, city, employee_id)
	VALUES ('Rua A', 'Metropolis', 1);

INSERT INTO addresses (street, city, employee_id)
	VALUES ('Rua B', 'Gotham', 2);

INSERT INTO addresses (street, city, employee_id)
	VALUES ('Rua C', 'Themyscira', 3);

## OU MAIS DE UM AO MESMO TEMPO
INSERT INTO addresses (street, city, employee_id)
VALUES 
('Rua A', 'Metropolis', 1),
('Rua B', 'Gotham', 2),
('Rua C', 'Themyscira', 3);
=begin
aula_relacionamento_tabelas=# select * from addresses;
 id | street | number | complement |    city    | employee_id
----+--------+--------+------------+------------+-------------
  1 | Rua A  |        |            | Metropolis |           1
  2 | Rua B  |        |            | Gotham     |           2
  3 | Rua C  |        |            | Themyscira |           3
(3 linhas)

=end

-- Repare que agora não é possível inserir mais endereços para esses IDs, pois a employe id é unica, a ocontrário da nossa departament_id que é nossa foreign key. No caso o funcionário só pode ter um endereço.

INSERT INTO addresses (street, city, employee_id)
	VALUES ('Fazenda Kent', 'Smallville', 1);


ERROR:  duplicar valor da chave viola a restrição de unicidade "addresses_employee_id_key"
Chave (employee_id)=(1) já existe. 

ERRO:  duplicar valor da chave viola a restrição de unicidade "addresses_employee_id_key"
SQL state: 23505
Detail: Chave (employee_id)=(1) já existe.
