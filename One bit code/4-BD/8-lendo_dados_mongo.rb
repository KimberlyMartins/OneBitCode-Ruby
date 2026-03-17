#Requerimos o mongo
require 'mongo'

# Configuramos o banco
client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

#Lendo dados
collection = client[:products]
documents = collection.find

# Exibição dos dados
puts "Produtos:"
documents.each do |document|
  puts "Nome: #{document[:name]}, Categoria:#{document[:category][:name]}"
end