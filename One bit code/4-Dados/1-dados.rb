=begin
                        BANCO DE DADOS
Um banco de dados é uma coleção organizada de informações
(dados) estruturadas normalmente armazenadas eletronicamente 
em um sistema.
Um banco de dados é geralmente controlado por um SGBD - Sistema
de Gerenciamento de Banco de Dados ( DBMS - Database Management System),
juntos, os DBMS e os dados são chamados de BANCO DE DADOS.
	 
	               Banco de dados relacionais(SQL)
O banco de dados relacional é o tipo de banco que trabalha com tabelas 
relacionais e bem definidas, isto é, tabelas compostas por linhas e colunas, lembrando 
muito uma estrutura de tabela de Excel. Cada tabela representa uma entidade 
ou relação do mundo real. As linhas representam registros individuais
e as colunas representam os atributos ou características dos registros.
A SQL(Structured Query Language - SEQUEL) é uma linguagem de programação
para trabalhar com dados relacionais. Os programas mais utilizados  que usam o SQL
são: Oracle, MySQL, SQL Server e  PostgreSQL.

                Banco de dados não relacionais(NoSQL)
Já os não relacionais, não seguem o modelo de tabelas e relacionamentos 
utilizado pelos bancos de dados relacionais tradicionais. Para esses 
bancos de dados NoSQL, temos uma variedade de modelos, incluindo o modelo 
colunar, modelo de grafos, chave-valor e modelo orientado a documentos. 
Cada um desses modelos possui suas próprias características e é adequado 
para diferentes tipos de aplicação e necessidades de armazenamento de dados.
NoSQL (Not Only Sequel - Não só SQL),podemos ter a sql mas ela não vai ser a única
linguagem de programação. Os programas mais utilizados são MongoDB, Cassandra, Neo4j 
e Riak.


                          Linguagem SQL

               Categorias de comandos da linguagem SQL
DDL(Data Definition Language): Comandos para definir a estrutura do banco de dados.
  ex: CREATE TABLE, ALTER TABLE (criar e alterar tabelas)

DDM(Data Manipulation Language): Comandos para manipular os dados diretamente.
  ex: SELECT, INSERT , UPDATE, DELETE (selecionar, inserir, atualizar e deletar)

DCL(Data Control Language): Comando para controlar o acesso aos dados.
  ex: GRANT, REVOKE (garantir acesso, revogar acesso)

TCL(Transaction Control Language): Comando para transações financeiras onde se a transação 
não for bem sucedida ele volta a transação para evitar erro.
  ex: BEGIN, COMMIT, ROLLBACK (iniciar transação, confirmar se deu certo e desfazer a transação caso dê erro)




                       Tipos de dados linguagem SQL 
Tipos de dados definem a natureza dos valores que podem ser armazenadosem uma coluna de uma tabela.
Escolher o tipo de dado pe crucial para a eficiencia, integridade e otimização do banco de dados.

                           DADOS NUMÉRICOS:
SMALLINT - inteiro de 2 bytes- ocupa 2 bytes na coluna

* INT / INTERGER - inteiro de 4 bytes ocupa 4 bytes na coluna (mais usado)

BIGINT - inteiro de 8 bytes ocupa 8 bytes na coluna

* FLOAT - Número com ponto flutuante simples (número com vírgula)

DOBLE - Número com ponto flutuante de precisão dupla (para números maiores)

DECIMAL / NUMERIC - Número de precisão fixa, útil para valores monetários (dinheiros)


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



                          Entrar com o usuário postgres

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


                  Criar Usuário com senha 
postgres=# CREATE USER kim WITH ENCRYPTED PASSWORD '' CREATEDB;
#senha entre aspas simples

 # Se deu certo ele retorna CREATE ROLE

Para sair do menu postgre digita exit
postgres=> exit
kim@kim:~$ 


                      Entrar com o usuário que foi criado

-d Especifica o banco de dados 
-U Especifica o Usuário
-W Pedir a senha do usuário

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


                      Conectar a um novo banco
\c Conecta a um novo banco com esse comando

psql -d meu_primeiro_database
psql (16.8 (Ubuntu 16.8-0ubuntu0.24.04.1))
Type "help" for help.

meu_primeiro_database=> \c postgres
You are now connected to database "postgres" as user "kim".

                     Renomear banco de dados 
ALTER DATABASE meu_primeiro_database RENAME TO teste_database;
ALTER DATABASE

ERRO = Se o pg admin estiver aberto com o banco de dados, dá erro ao tentar
mudar o nome

postgres=> ALTER DATABASE meu_primeiro_database RENAME TO teste_database;
ERROR:  database "meu_primeiro_database" is being accessed by other users
DETAIL:  There is 1 other session using the database.

= end

