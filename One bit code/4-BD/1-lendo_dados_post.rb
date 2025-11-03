require 'pg' # Carregue pg para conectar ruby ao banco de dados postgres

#                    CONFIGURANDO A CONEXÃO DO BANCO DE DADOS
#Aqui preenchemos com as mesmas configs de quando criamos o banco de dados desejado
conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '432157',
    host: 'localhost',
    port: '5432'
)

#               CONSULTA SQL
#Depois de passar os dados para conexão, vamos criar uma query assim como no PGadmin p realizar as buscas 
query = 'SELECT * FROM jogo'

begin # begin para o inicio do código a ser consultado
result = conn.exec(query)  # result vai ser igual pegar a conn do pg e executar a query que criamos
 result.each do |row|      # each do vai passar por cada linha a ser mostrada, faz a iteração delas
    puts "ID:#{row['id']} - NOME:#{row['name']} - ANO:#{row['year']} - NOTA:#{row['score']}" # puts imprime os dados a serem exibidos
end
 ensure            # ensure garante que esse pedaçõ de código sempre seja executado
    conn.close if conn    # fechar conn se conn estiver aberta
end

=begin 
RETORNA
ID:1 - NOME:Resident Evil 4 Remake - ANO:2023 - NOTA:9
ID:2 - NOME:Super Mario Bros Wonder - ANO:2023 - NOTA:9.5
ID:3 - NOME:Super Mario Odyssey - ANO:2017 - NOTA:10     
ID:4 - NOME:Alan Wake 2 - ANO:2023 - NOTA:8.5
=end

