
                        BANCO DE DADOS
Um banco de dados é uma coleção organizada de informações
(dados) estruturadas normalmente armazenadas eletronicamente 
em um sistema.
Um banco de dados é geralmente controlado por um SGBD - Sistema
de Gerenciamento de Banco de Dados ( DBMS - Database Management System),
juntos, os DBMS e os dados são chamados de BANCO DE DADOS.
	 
	               BANCO DE DADOS RELACIONAIS(SQL)
O banco de dados relacional é o tipo de banco que trabalha com tabelas 
relacionais e bem definidas, isto é, tabelas compostas por linhas e colunas, lembrando 
muito uma estrutura de tabela de Excel. Cada tabela representa uma entidade 
ou relação do mundo real. As linhas representam registros individuais
e as colunas representam os atributos ou características dos registros.
A SQL(Structured Query Language - SEQUEL) é uma linguagem de programação
para trabalhar com dados relacionais. Os programas mais utilizados  que usam o SQL
são: Oracle, MySQL, SQL Server e  PostgreSQL.

                BANCO DE DADOS NÃO RELACIONAIS(NOSQL)
Já os não relacionais, não seguem o modelo de tabelas e relacionamentos 
utilizado pelos bancos de dados relacionais tradicionais. Para esses 
bancos de dados NoSQL, temos uma variedade de modelos, incluindo o modelo 
colunar, modelo de grafos, chave-valor e modelo orientado a documentos. 
Cada um desses modelos possui suas próprias características e é adequado 
para diferentes tipos de aplicação e necessidades de armazenamento de dados.
NoSQL (Not Only Sequel - Não só SQL),podemos ter a sql mas ela não vai ser a única
linguagem de programação. Os programas mais utilizados são MongoDB, Cassandra, Neo4j 
e Riak.


                          LINGUAGEM SQL

               Categorias de comandos da linguagem SQL
DDL(Data Definition Language): Comandos para definir a estrutura do banco de dados.
  ex: CREATE TABLE, ALTER TABLE (criar e alterar tabelas)

DML(Data Manipulation Language): Comandos para manipular os dados diretamente. Famoso CRUD.
O CRUD (Create, Read, Update, Delete) é um acrônimo que representa as quatro operações fundamentais que podem ser realizadas em qualquer sistema de armazenamento de dados.
Create (Criação): Esta operação envolve a criação de novos registros no banco de dados. Em um sistema de gerenciamento de banco de dados relacional (RDBMS), isso geralmente é feito usando a instrução SQL INSERT.
Read (Leitura): A operação de leitura envolve a recuperação de dados do banco de dados. Isso pode ser feito usando a instrução SQL SELECT, que retorna os registros correspondentes a uma determinada condição.
Update (Atualização): A operação de atualização envolve a modificação de registros existentes no banco de dados. Isso é feito usando a instrução SQL UPDATE, que modifica os registros que correspondem a uma determinada condição.
Delete (Exclusão): A operação de exclusão envolve a remoção de registros existentes do banco de dados. Isso é feito usando a instrução SQL DELETE, que remove os registros que correspondem a uma determinada condição.
  ex: SELECT, INSERT , UPDATE, DELETE (selecionar, inserir, atualizar e deletar)

DCL(Data Control Language): Comando para controlar o acesso aos dados.
  ex: GRANT, REVOKE (garantir acesso, revogar acesso)

TCL(Transaction Control Language): Comando para transações financeiras onde se a transação 
não for bem sucedida ele volta a transação para evitar erro.
  ex: BEGIN, COMMIT, ROLLBACK (iniciar transação, confirmar se deu certo e desfazer a transação caso dê erro)


                       TIPOS DE DADOS LINGUAGEM SQL 
Tipos de dados definem a natureza dos valores que podem ser armazenadosem uma coluna de uma tabela.
Escolher o tipo de dado pe crucial para a eficiencia, integridade e otimização do banco de dados.

                           DADOS NUMÉRICOS:
SMALLINT - inteiro de 2 bytes- ocupa 2 bytes na coluna

* INT  = INTERGER - inteiro de 4 bytes ocupa 4 bytes na coluna (mais usado)

BIGINT - inteiro de 8 bytes ocupa 8 bytes na coluna

* FLOAT - Número com ponto flutuante simples (número com vírgula)

DOBLE - Número com ponto flutuante de precisão dupla (para números maiores)

DECIMAL / NUMERIC - Número de precisão fixa, útil para valores monetários (dinheiros) 
Em decimal, precisa dizer quantos números antes e depois da vírgula ex: DECIMAL(15,2)


                            DADOS DE TEXTO:
* CHAR(n): Cadeia de caracteres de comprimento fixo específicado dentro do parênteses

* VARCHAR(n): Cadeia de caracteres de comprimento variável (string de até X caracteres colocados no parêntese,
 geralmente de 0 a 255)

* TEXT: Cadeia de caracteres de comprimento muito grande como textos (ocupa mais espaço no armazenamento)


                            DADOS E DATA E HORA:
DATE: Data (ano, mês e dia)

TIME: Hora (hora, minuto e segundo)

* DATETIME: Combinação de datas e horários

TIMESTAMP: Data e hora muito usada para metadados(informações do proprio registro tipo quando foi acessado, atualizado ou afins)

                            DADOS VARIÁVEIS:
* BOOLEAN: Representa valores lógicos (TRUE or FALSE)

BLOB: Dados binários grandes, usado para armazenar arquivos como imagens e vídeos ocupa mais espaço (pouco usado pois é melhor salvar imagem na nuvem e adc como dado de texto com a url)

ENUM: Conjunto de valores predefinidos (só aceita os valores pré definidos - em preparação, em produção, pedido enviado)

JSON:  Armazena dados em formato JSON            


                               PostgreSQL 
Para saber se o postgresql está funcionando usa o comando: sudo systemctl status postgresql.
*** Pode acessar comandos sql pelo site https://halleyoliv.gitlab.io/pgdocptbr/app-psql.html ***

que retorna:
=begin
[sudo] senha para kim: 
● postgresql.service - PostgreSQL RDBMS
     Loaded: loaded (/usr/lib/systemd/system/postgresql.service; enabled; prese>
     Active: active (exited) since Fri 2025-03-21 09:51:20 -03; 2h 55min ago
    Process: 1472 ExecStart=/bin/true (code=exited, status=0/SUCCESS)
   Main PID: 1472 (code=exited, status=0/SUCCESS)
        CPU: 12ms

mar 21 09:51:20 kim systemd[1]: Starting postgresql.service - PostgreSQL RDBMS.>
mar 21 09:51:20 kim systemd[1]: Finished postgresql.service - PostgreSQL RDBMS.
lines 1-9/9 (END)
=end


------------------------------------
                            PSQL
Psql é o terminal interativo do postgres. O psql é uma interface no modo texto para o PostgreSQL. 
Ele permite que se digite consultas interativamente, envie-as para o PostgreSQL, e ver os resultados da consulta.
Para se conectar a um banco de dados, é necessário saber o nome do banco de dados de destino, o nome do hospedeiro 
e o número da porta do servidor, e com qual nome de usuário se deseja conectar. O psql pode ser informado sobre esses 
parâmetros por meio de opções de linha de comando, ou seja, as opções -d, -h, -p, e -U, respectivamente. 
Se for encontrado um argumento que não pertença a nenhuma opção, será interpretado como o nome do banco de dados (ou o 
nome do usuário, se o nome do banco de dados já tiver sido fornecido).

Alguns comandos psql:
-d = nome_do_banco_de_dados. Especifica o nome do banco de dados ao qual se conectar. Equivale a especificar o 
nome_do_banco_de_dados como o primeiro argumento sem opção na linha de comando. O nome_do_banco_de_dados pode ser 
uma cadeia de caracteres de conexão. Nesse caso, os parâmetros da cadeia de caracteres de conexão prevalecem sobre quaisquer 
opções de linha de comando conflitantes.

-h = nome_do_hospedeiro. Especifica o nome de hospedeiro da máquina na qual o servidor está sendo executado. Se o valor começar 
com uma barra, será usado como o diretório para o soquete de domínio Unix.

-p = porta. Especifica a porta TCP, ou a extensão do arquivo de soquete de domínio Unix local, na qual o servidor está 
aguardando conexões. O padrão é o valor da variável de ambiente PGPORT ou, se não estiver definida, a porta especificada no 
tempo de construção, geralmente 5432.

-U = nome_do_usuário. Conecta ao banco de dados como o usuário nome_do_usuário, em vez do padrão.
(É necessário ter permissão para fazê-lo, é claro.)

-W = senha. Força o psql a solicitar a senha antes de se conectar a um banco de dados, mesmo que a senha não seja usada.

\q ou q para fechar depois do END onde não dá para adicionar mais comandos.
  
--help = Ajuda. Nos traz algumas informações úteis para usar o psql

=begin
psql --help
psql is the PostgreSQL interactive terminal.

Usage:
  psql [OPTION]... [DBNAME [USERNAME]]

General options:
  -c, --command=COMMAND    run only single command (SQL or internal) and exit
  -d, --dbname=DBNAME      database name to connect to (default: "kim")
  -f, --file=FILENAME      execute commands from file, then exit
  -l, --list               list available databases, then exit
  -v, --set=, --variable=NAME=VALUE
                           set psql variable NAME to VALUE
                           (e.g., -v ON_ERROR_STOP=1)
  -V, --version            output version information, then exit
  -X, --no-psqlrc          do not read startup file (~/.psqlrc)
  -1 ("one"), --single-transaction
                           execute as a single transaction (if non-interactive)
  -?, --help[=options]     show this help, then exit
      --help=commands      list backslash commands, then exit
      --help=variables     list special variables, then exit

Input and output options:
  -a, --echo-all           echo all input from script
  -b, --echo-errors        echo failed commands
  -e, --echo-queries       echo commands sent to server
  -E, --echo-hidden        display queries that internal commands generate
  -L, --log-file=FILENAME  send session log to file
  -n, --no-readline        disable enhanced command line editing (readline)
  -o, --output=FILENAME    send query results to file (or |pipe)
  -q, --quiet              run quietly (no messages, only query output)
  -s, --single-step        single-step mode (confirm each query)
  -S, --single-line        single-line mode (end of line terminates SQL command)

Output format options:
  -A, --no-align           unaligned table output mode
      --csv                CSV (Comma-Separated Values) table output mode
  -F, --field-separator=STRING
                           field separator for unaligned output (default: "|")
  -H, --html               HTML table output mode
  -P, --pset=VAR[=ARG]     set printing option VAR to ARG (see \pset command)
  -R, --record-separator=STRING
                           record separator for unaligned output (default: newline)
  -t, --tuples-only        print rows only
  -T, --table-attr=TEXT    set HTML table tag attributes (e.g., width, border)
  -x, --expanded           turn on expanded table output
  -z, --field-separator-zero
                           set field separator for unaligned output to zero byte
  -0, --record-separator-zero
                           set record separator for unaligned output to zero byte

Connection options:
  -h, --host=HOSTNAME      database server host or socket directory (default: "/var/run/postgresql")
  -p, --port=PORT          database server port (default: "5432")
  -U, --username=USERNAME  database user name (default: "kim")
  -w, --no-password        never prompt for password
  -W, --password           force password prompt (should happen automatically)

For more information, type "\?" (for internal commands) or "\help" (for SQL
commands) from within psql, or consult the psql section in the PostgreSQL
documentation.

Report bugs to <pgsql-bugs@lists.postgresql.org>.
PostgreSQL home page: <https://www.postgresql.org/>
=end

                          ENTRAR COM O USUÁRIO POSTGRES
=begin
sudo -u postgres psql
[sudo] senha para kim: 
psql (16.8 (Ubuntu 16.8-0ubuntu0.24.04.1))
Type "help" for help.

postgres=# help
You are using psql, the command-line interface to PostgreSQL.
Type:  \copyright for distribution terms
       \h for help with SQL commands
       \? for help with psql commands
       \g or terminate with semicolon to execute query
       \q to quit
postgres=#
=end
 
                  CRIAR BANCO DE DADOS
CREATE DATABASE + nome_do_banco;


                  CRIAR USUÁRIO COM SENHA 
postgres=# CREATE USER kim WITH ENCRYPTED PASSWORD '' CREATEDB;
#senha entre aspas simples

 # Se deu certo ele retorna CREATE ROLE

Para sair do menu postgre digita exit
postgres=> exit
kim@kim:~$ 


                      ENTRAR COM O USUÁRIO QUE FOI CRIADO
-d Especifica o banco de dados 
-U Especifica o Usuário
-W Pedir a senha do usuário
=begin
                login direto
kim@kim:~$ psql -d postgres
psql (16.8 (Ubuntu 16.8-0ubuntu0.24.04.1))
Type "help" for help.
postgres=> exit

                login especificando mais
kim@kim:~$ psql -d postgres -U kim
psql (16.8 (Ubuntu 16.8-0ubuntu0.24.04.1))
Type "help" for help.
postgres=> 

                login pedindo a senha
kim@kim:~$ psql -d postgres -U kim -W
Password: 
psql (16.8 (Ubuntu 16.8-0ubuntu0.24.04.1))
Type "help" for help.
postgres=> 

psql -d meu_primeiro_database
psql (16.8 (Ubuntu 16.8-0ubuntu0.24.04.1))
Type "help" for help.

meu_primeiro_database=> \c postgres
You are now connected to database "postgres" as user "kim".
=end

                     CONECTAR A UM NOVO BANCO
\c Conecta a um novo banco com esse comando

                     RENOMEAR BANCO DE DADOS 
Comando ALTER DATABASE + nome do banco a ser renomeado + RENAME TO + novo nome;
ALTER DATABASE meu_primeiro_database RENAME TO teste_database;
ALTER DATABASE

ERRO = Se o pg admin estiver aberto com o banco de dados, dá erro ao tentar
mudar o nome

# postgres=> ALTER DATABASE meu_primeiro_database RENAME TO teste_database;
# ERROR:  database "meu_primeiro_database" is being accessed by other users
# DETAIL:  There is 1 other session using the database.
             

                    EXCLUIR BANCO DE DADOS
****CAUTION!!! O comando para a exclusão de bancos é irreversível***
Comando DROP DATABASE seguido do banco a ser excluído;

postgres=> DROP DATABASE meu_primeiro_database;
DROP DATABASE


                       COMANDOS POSTGRESQL
Muito semelhante aos comandos do banco de dados direto:
para CRIAR tabelas usamos CREATE TABLE;
para EXCLUIR tabelas usamos DROP TABLE;
para ALTERAR tabelas usamos ALTER TABLE;


Dentro do pg admin vc abre o banco de dados, clica em schema, public e tables. Em tables
clica com o botão esquerdo e seleciona QUERY TOOL, para abrir o termminal de edição de querys.
 
                           QUERY
É uma solicitação de informações feita ao banco de dados. que retorna uma tabela ou um conjunto 
delas, figuras, gráficos ou resultados complexos.

                CRIAÇÃO DE TABELAS
Para CRIAR tabelas usamos CREATE TABLE;
- Palavras chaves obrigatórias não precisam estar em maíusculas mas  por convenção e clareza geralmente estão.
- Nomes de tabelas não podem ter espaços, se usa _
- Cada definição de coluna é separada por virgula, exceto a ultima onde para finalizar o comando usa ;

CREATE TABLE cliente(
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
phone VARCHAR(20) NOT NULL,
email VARCHAR(100)
);


              ESPECIFICAÇÃO DENTRO DO BANCO DE DADOS
Para conferir o que está dentro do banco de dados usamos o \d , que mostra a lista de relações de dentro
do banco de dados.
=begin
db_concessionaria=> \d
             List of relations
 Schema |      Name      |   Type   | Owner 
--------+----------------+----------+-------
 public | cliente        | table    | kim
 public | cliente_id_seq | sequence | kim
(2 rows)

db_concessionaria=>
=end

               EXCLUSÃO DE TABELAS
****CAUTION!!! O comando para a exclusão de tabelas também é irreversível***
Comando DROP TABLE seguido do banco a ser excluído;

DROP TABLE clientes;


                ALTERAÇÃO DE TABELAS
Na alteração podemos fazer diversas operações usando o comando ALTER TABLE + npme da tabela e especificar o
que precisa ser alterado.

          PARA ALTERAR O NOME DA TABELA:
ALTER TABLE clientes RENAME TO customer;

          PARA ADICIONAR COLUNA:
ALTER TABLE clientes ADD COLUMN birthday DATE;

          PARA EXCLUIR COLUNA:
ALTER TABLE clientes DROP COLUMN birthday;

          PARA DIZER QUE NÃO PODE SER NULO:
ALTER TABLE clientes ALTER COLUMN email SET NOT NULL;        

          PARA MUDAR DE NOT NULL PARA NULO:
ALTER TABLE clientes ALTER COLUMN phone DROP NOT NULL;

          PARA RENOMEAR COLUNA:
ALTER TABLE clientes RENAME COLUMN phone TO telephone;

          PARA ADICIONAR O DEFAULT NA COLUNA:
ALTER TABLE suppliers ALTER COLUMN hiring_date SET DEFAULT CURRENT_DATE;

# "DEFAULT" é uma cláusula usada para definir um valor padrão para uma coluna de uma tabela. 
# Quando um valor não é fornecido explicitamente ao inserir dados numa coluna com um valor 
# padrão definido, essa coluna assumirá o valor padrão

# Valor padrão pode ser uma expressão:
# O valor padrão não precisa ser um valor constante. Pode ser uma função ou expressão que será avaliada 
# quando um novo registro for inserido, como DEFAULT CURRENT_TIMESTAMP para colunas de data e hora. 
# Por exemplo, se a pessoa não preencher o valor da data, com oDEFAULT CURRENT_TIMESTAMP ele será preenchido automaticamente com  a data e hora daquele momento