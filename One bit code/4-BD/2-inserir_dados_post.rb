require 'pg' # Carregue pg para conectar ruby ao banco de dados postgres

#Aqui preenchemos com as mesmas configs de quando criamos o banco de dados desejado para conectar
conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '432157',
    host: 'localhost',
    port: '5432'
)

#                     ADICIONAR DADOS COM ARRAY
registros = [
  {name: 'The Last Of Us', year: 2023, score: 9.0},
  {name: 'Spider Man 2', year: 2023, score: 9.5}
]

# ITERANDO DADOS DO ARRAY
registros.each do |registro|
  name = registro[:name]
  year = registro[:year]
  score = registro[:score]

  #Criar a query de inserção
  insert_query = "INSERT INTO jogo (name,year,score) VALUES ('#{name}', #{year}, #{score})"

  conn.exec(insert_query)
end

puts "Registros inseridos com sucesso"
conn.close
