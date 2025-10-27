require 'pg'

#                    CONFIGURANDO A CONEXÃO DO BANCO DE DADOS
conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '432157',
    host: 'localhost',
    port: '5432'
)

#               CONSULTA SQL
query = 'SELECT * FROM jogo'

begin
#Executar a consulta
result = conn.exec(query)
 # Itera sobre as linhas do resultado e imprime os dados
 result.each do |row|
    puts "ID:#{row['id']} - NOME:#{row['name']} - ANO:#{row['year']} - NOTA:#{row['score']}"
end
 ensure
    conn.close if conn
end

=begin 
RETORNA
ID:1 - NOME:Resident Evil 4 Remake - ANO:2023 - NOTA:9
ID:2 - NOME:Super Mario Bros Wonder - ANO:2023 - NOTA:9.5
ID:3 - NOME:Super Mario Odyssey - ANO:2017 - NOTA:10     
ID:4 - NOME:Alan Wake 2 - ANO:2023 - NOTA:8.5
=end