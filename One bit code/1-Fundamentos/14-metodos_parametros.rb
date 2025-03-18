
#                     Método recebendo 2 parâmetros
def full_name (fname, lname)
	puts "Nome completo: #{fname} #{lname}"
end

full_name("Kim", "Martins")
full_name("Gabriel", "Monteiro")


#                     Método que soma 2 números 
def sum(a,b)
	return a + b # quando usa return coloca o puts para poder exibir o resultado
end

puts sum(10,20)

# Parâmetro default num método
def address(country="Brasil")
	puts "Eu moro no #{country}"
end

address()
address("China")

# Avaliação do filme
def rating_movie(qtdRating)
	puts "Informe o nome do filme:"
	movie_name  = gets.chomp
	sum = 0
	for i in 1..qtdRating
		puts "Digite a nota para o filme:"
		note = gets.chomp.to_f
		sum += note
	end
	puts "Média de avaliação do filme #{movie_name} é : #{sum / qtdRating}"
end

puts "Deseja fazer quantas avaliações:"
rating = gets.chomp.to_i

rating_movie(rating)

=begin IMPRIME
Deseja fazer quantas avaliações:
2
Informe o nome do filme:
ALien
Digite a nota para o filme:
10
Digite a nota para o filme:
9.5
Média de avaliação do filme ALien é : 9.75
=end
