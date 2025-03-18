=begin
Usando gets para trazer resultados digitáveis 

GETS.CHOMP = STRING
GETS.CHOMP.TO_I = INTEIRO (NÚMEROS)
GETS.CHOMP.TO_FLOAT = NÚMERO COM VIRGULA (PREÇO 10.00, ALTURA 1.69)

TO_S CONVERTER EM STRING
TO_A CONVERTE EM ARRAY
	
=end

puts "Informe o nome do filme:"
name = gets.chomp

puts "Informe o ano do filme:"
yearLaunch = gets.chomp.to_i


puts "Informe o preço do filme:"
price = gets.chomp.to_f


puts name
puts name.class
puts yearLaunch
puts yearLaunch.class
puts price
puts price.class