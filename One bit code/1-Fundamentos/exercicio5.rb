=begin
Frequência de Letra
Escreva um programa que calcula a frequência de uma letra dado uma determinada palavra 
ou texto que o usuário vier a digitar nesse programa. Você deve utilizar a estrutura 
Hash para armazenar os itens (chave e valor), onde a chave represente o caractere e o 
valor representa a frequência de ocorrência daquele caractere na palavra ou texto.
=end

=begin
puts "Escreva um texto" #Escreva um texto

texto = gets.chomp #kim martins
#puts texto.size
texto = Hash.new
puts texto.class #Hash


texto.store(:letra, "#{texto.size}") #{:letra=>"0"}
#texto.store(:frequencia, "#{letra|k|.times}")
puts texto
--------------------------

puts "Escreva um texto" #Escreva um texto

texto = gets.chomp #kim martins
#puts texto.size
texto = Hash.new
puts texto.class #Hash

texto.store(:letra, "#{a..z}") 
texto.store(:frequencia, "#{}")
puts texto.keys
puts texto.values

--------------------------------

	puts "Escreva um texto" #Escreva um texto
	texto = gets.chomp #kim martins
	#puts texto.size
	texto = Hash.new
	puts texto.class #Hash

		puts texto.store(:caractere, "#{texto}")
		puts texto.store(:frequencia, "#{1..10}")
	

	freq = {:caractere => texto(a..z), :frequencia => "#{texto.size}"}
puts freq

-------------------------------

puts "Escreva um texto" #Escreva um texto
texto = gets.chomp #kim martins
#puts texto.size
texto = Hash.new
puts texto.class #Hash

texto.store(:letra, (a)..(z) )
texto.store(:frequencia, "#{}")
puts texto.keys
puts texto.values

=end


def letter_frequency(text)
	chars = ("a".."z").to_a + ("A".."Z").to_a
	frequency = {}
	text.each_char do |char|
		if char.include?(char)
			unless frequency.key?(char)
				frequency[char] = 1
			else
				frequency[char] += 1
				
			end
		end
	end
	return frequency
end

puts "Frequencia de letra"
puts "Digite o texto"
text = gets.chomp

puts letter_frequency(text)


def letter_frequency(text)
	chars = ("a".."z").to_a + ("A".."Z").to_a
	frequency = {}
	text.each_char do |char|
		if char.include?(char)
			unless frequency.key?(char)
				frequency[char] = 1
			else
				frequency[char] += 1
				
			end
		end
	end
	puts frequency
end

puts "Frequencia de letra"
puts "Digite o texto"
text = gets.chomp

puts letter_frequency(text)





