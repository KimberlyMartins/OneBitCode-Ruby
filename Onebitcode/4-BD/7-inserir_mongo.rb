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


=begin
PS C:\Users\Acer\Documents\OneBitCode-Ruby\One bit code\4-BD> ruby .\7-inserir_mongo.rb
Dados inseridos com sucesso. Id: 69b96cb6998316c17a8dd47f
=end