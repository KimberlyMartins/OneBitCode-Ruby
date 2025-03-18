movie = {:Name => "Pânico", :Year =>1996}
puts movie   #{:Name=>"Pânico", :Year=>1996}

#   Métodos úteis 
puts movie.size  # Tamanho do hash
puts movie.length # Tamanho do Hassh
puts movie.to_a  # Converter hash para array  #Name
                                              #Pânico
                                              #Year
                                              #1996
puts
puts movie.min  #Name
                #Pânico
puts movie.max  #Year
                #1996

puts movie.fetch(:Name)   #FETCH = BUSCAR #Pânico  
puts movie.fetch(:Year)   #FETCH = BUSCAR #1996

# Adicionar novos itens
movie.store(:Genre, "Slasher")
movie.store(:Rating, 5.0)
puts movie  #{:Name=>"Pânico", :Year=>1996, :Genre=>"Slasher", :Rating=>5.0}

#Excluir chave
movie.delete(:Rating) #Delete para excluir chave
puts movie #{:Name=>"Pânico", :Year=>1996, :Genre=>"Slasher"}

# Limpar itens do hash
movie.clear()
puts movie #{}
