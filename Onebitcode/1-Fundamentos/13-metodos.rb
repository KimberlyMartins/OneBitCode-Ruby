# Método para imprimir Hello World
def hello
 puts "OI"
end

#hello()
#hello()
#hello()
#hello()

# Método somar 2 números
def sum()
	puts 5 + 4
end

#sum()
#sum()

# Método para cadastrar filme 
def create_movie
	puts "Digite o nome do filme:"
	name = gets.chomp
	puts "Digite o ano de lançamento do filme:"
	yearLaunch = gets.chomp.to_i
	puts "Digite o preço do filme:"
	price = gets.chomp.to_f

	puts "#{name} - R$ #{price}"
end

create_movie()
puts ""  # puts vazio pra pular linha no terminal
create_movie()

=begin IMPRIME
Digite o nome do filme:
ALien
Digite o ano de lançamento do filme:
1979
Digite o preço do filme:
150
ALien - R$ 150.0

Digite o nome do filme:
Alien Romulus
Digite o ano de lançamento do filme:
2024
Digite o preço do filme:
36
Alien Romulus - R$ 36.0
=end


