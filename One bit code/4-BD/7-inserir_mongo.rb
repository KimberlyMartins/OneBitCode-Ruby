#Instalamos a gema mongo antes de tudo. gem installl mongo
require 'mongo'

# Configuração do banco
client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# Inserindo dados de produtos e categorias
result = client[:products].insert_one({
    'name' => 'Notebook',
    'category' => {
        'name' => 'Eletronics'
    }
})

# Verificando resultados da inserção
if result.successful?
    puts "Dados inseridos com sucesso. Id: #{result.inserted_id}"
else
    puts "Falha ao inserir dados"
end
