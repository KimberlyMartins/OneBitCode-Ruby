# FOR EACH
=begin
for i in 1..5
	puts i 
end

# Utilizando EACH
(1..5).each do |i|
	puts i
end
=end

moviesList = ["O Máscara", "Homem Aranha", "Batman", "Super Mario Bros"]

# Iterando valores de um array
moviesList.each do |movie|
puts movie
end

# Utilizando o BREAK - quando tal condição for atendida pare - sair do loop
moviesList.each do |movie|
	break if movie == "Batman"
	puts movie
end

# Utilizando NEXT - pula para a próxima iteração
moviesList.each do |movie|
	next if movie == "Homem Aranha"
	puts movie
end

# Avaliação do filme
puts "Digite o nome do filme:"
movieName = gets.chomp

puts "Digite quantas avaliações deseja fazer no  filme"
movieRating = gets.chomp.to_i

sum = 0
movieRating.times do 
	puts "Digite uma nota para o filme"
	note = gets.chomp.to_f
	sum += note
end
average = sum / movieRating

puts "Média de avaliação do filme #{movieName} é %.2f." %average

=begin IMPRIME 
Digite o nome do filme:
mario
Digite quantas avaliações deseja fazer no  filme
2
Digite uma nota para o filme
6
Digite uma nota para o filme
7
Média de avaliação do filme mario é 6.50.
=end