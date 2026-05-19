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


=begin
PS C:\Users\Acer\Documents\OneBitCode-Ruby\One bit code\4-BD> ruby .\9-atual_dados_mongo.rb
Dados atualizados com sucesso.
=end