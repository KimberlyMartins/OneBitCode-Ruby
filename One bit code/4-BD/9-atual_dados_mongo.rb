#Requerimos o mongo
require 'mongo'

# Configuramos o banco
client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

#Atualização de um ou mais dados  (update_one ou update_many)
result = client[:products].update_one({name: 'Smartphone'}, {
  "$set" => {category: {name: 'Mobile devices'}}
})

#Verificação do resultado de atualização
if result.modified_count > 0
  puts "Dados atualizados com sucesso."
else
  puts "Nenhum documento foi atualizado."
end
