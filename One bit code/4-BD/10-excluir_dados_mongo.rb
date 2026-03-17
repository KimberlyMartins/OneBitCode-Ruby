#Requerimos o mongo
require 'mongo'

# Configuramos o banco
client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

#Atualização de um ou mais dados  (update_one ou update_many)
result = client[:products].delete_one({name: 'Smartphone'})

#Verificação do resultado de atualização
if result.deleted_count > 0 
  puts "Registro excluído com sucesso"
else
  puts "Nenhum documento foi excluido"
end