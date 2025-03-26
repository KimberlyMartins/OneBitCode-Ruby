=begin
                BANCO DE DADOOS
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

                  PostgreSQL 
Para saber se o postgresql está funcionando usa o comando: sudo systemctl status postgresql.

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

Psql é o terminal interativo do postgres.
O comando psql --help nos traz algumas informações

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
= end

