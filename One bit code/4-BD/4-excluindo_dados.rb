require 'pg' # Carregue pg para conectar ruby ao banco de dados postgres

#Aqui preenchemos com as mesmas configs de quando criamos o banco de dados desejado para conectar
conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '432157',
    host: 'localhost',
    port: '5432'
)

id_registro = 8

# Criando a query para exclusão de um dado
delete_query = "DELETE FROM jogo WHERE id = #{id_registro}"

conn.exec(delete_query)

puts "Registro excluído com sucesso"

conn.close