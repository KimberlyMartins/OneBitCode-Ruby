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

=begin 
Em caso de exclusão
PS C:\Users\Acer\Documents\OneBitCode-Ruby\One bit code\4-BD> ruby .\10-excluir_dados_mongo.rb
Registro excluído com sucesso

Em caso de não achar dados para excluir
PS C:\Users\Acer\Documents\OneBitCode-Ruby\One bit code\4-BD> ruby .\10-excluir_dados_mongo.rb
Nenhum documento foi excluido
=end
