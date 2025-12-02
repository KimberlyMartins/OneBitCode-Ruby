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
Agora vamos ver como criar um relacionamento um-para-muitos (1:n). Nesse cenário, criaremos uma tabelas de departamentos, onde cada funcionário só pode pertencer a um departamento por vez, mas um departamento é composto de vários funcionários. Para criar uma tabela com esse relacionamento utilizaremos uma estrutura muito parecida. Comece criando a tabela de departamentos: