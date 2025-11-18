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

Para essa aula criamos um novo banco de dados, chamado aula_relacionamento_tabelas no pg admin

vamos abrir 2 querys e criar uma tabela em cada 

CREATE TABLE employees (
id SERIAL PRIMARY KEY,
NAME VARCHAR(255) NOT NULL,
phone VARCHAR(30)
);

CREATE TABLE addresses (
id SERIAL PRIMARY KEY,
street VARCHAR(255) NOT NULL,
number VARCHAR(10),
complement VARCHAR(255),
city VARCHAR(255) NOT NULL,
employee_id INT UNIQUE,
FOREIGN KEY (employee_id) REFERENCES employees (id)
);
=end