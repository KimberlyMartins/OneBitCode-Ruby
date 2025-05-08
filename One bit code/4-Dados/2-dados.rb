=begin
 Continuação sobre banco de dados 


              INSERIR DADOS NAS TABELAS CRIADAS NO BANCO DE DADOS 
Para inserir dados nas tabelas criadas usamos o comando INSERT INTO + nome da tabela + (nomes da coluna a ser prenchida) + VALUES + (infos das colunas escolhidas) + ; e por fim executar a querry.

******** STRINGS NO VALUE TEM QUE ESTAR COM ASPAS SIMPLES *********

EX:
INSERT INTO clients (name, phone, adress, created_at) 
VALUES ('Kim', '41 123456789', 'Rua do Medo', '2025-05-08');

No PgADMIN se tiver sido executada com sucesso ela retornará
INSERT 0 1
Query returned successfully in 168 msec.

=end