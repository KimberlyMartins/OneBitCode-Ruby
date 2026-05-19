#Criando Hash
mov = Hash.new
puts mov.class # retorta Hash

movie = {"Name" => "Halloween","Year" => 1978} 
puts movie #{"Name"=>"Halloween", "Year"=>1978}

#OU

movie2 = {:Name => "Panico",:Year => 1996}
puts movie2 #{:Name=>"Panico", :Year=>1996}
puts 

#  Iteração de valores
puts movie2.keys   # retorna Name 
#                           Year
puts movie2.values # retorna Pânico 
#                            1996
puts

for key, value in movie2
	puts "#{key} - #{value}"   # RETORNA Name - Panico
	                           #         Year - 1996

end  

for key, value in movie
	puts "#{key} - #{value}"  #  Retorna Name - Halloween
                              #          Year - 1978
end
puts 

# While

i = 0 
while i < movie2.length
	puts "#{movie2.keys[i]} - #{movie2.values[i]}" #Retorna Name - Panico
	                                               #        Year - 1996          
	i += 1
end

movie2.each{|key,value| puts "#{key} - #{value}"}