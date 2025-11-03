require 'pg' # Carregue pg para conectar ruby ao banco de dados postgres

#Aqui preenchemos com as mesmas configs de quando criamos o banco de dados desejado para conectar
conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '432157',
    host: 'localhost',
    port: '5432'
)

id_registro = 7

# Determinamos os novos valores para a atualização de dados
new_name = 'Mortal Kombat 1'
new_year = '2023'
new_score = 8.5

# Instrução sql query de atualização 
update_query = "UPDATE jogo SET name = '#{new_name}', year = #{new_year}, score = #{new_score} WHERE id = #{id_registro}"

conn.exec(update_query)

puts "Registro atualizado com sucesso"

conn.close