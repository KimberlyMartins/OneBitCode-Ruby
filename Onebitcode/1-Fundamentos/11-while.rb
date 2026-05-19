# WHILE = ENQUANTO - Enquanto tal coisa, faça tal coisa
=begin
i = 0 
while i < 5
	puts i
	i += 1
end
=end

puts "Digite o nome do filme"
movie_name = gets.chomp
qtd_rating = 0 
total_rating = 0
rating = 0
average = 0

while rating != -1
	puts "Informe a nota do filme"
	rating = gets.chomp.to_f

	if rating != -1
	total_rating += rating 
	qtd_rating += 1
	average = total_rating / qtd_rating
	end
end

puts "Média das avaliações #{movie_name} é %2f." %average

=begin   IMPRIME NO TERMINAL 
Digite o nome do filme
ALien
Informe a nota do filme
10
Informe a nota do filme
9.8
Informe a nota do filme
9.5
Informe a nota do filme
-1
Média das avaliações ALien é 9.766667.
=end  