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

=begin
PS C:\Users\Acer\Documents\OneBitCode-Ruby\One bit code\4-BD> ruby .\8-lendo_dados_mongo.rb
Produtos:
Nome: Smartphone, Categoria:Eletronics
Nome: Smartphone, Categoria:Eletronics
Nome: Smartphone, Categoria:Eletronics
Nome: Notebook, Categoria:Eletronics
=end