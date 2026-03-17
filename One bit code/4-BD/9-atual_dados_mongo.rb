#Requerimos o mongo
require 'mongo'

# Configuramos o banco
client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

#Atualização de um ou mais dados  (update_one ou update_many)