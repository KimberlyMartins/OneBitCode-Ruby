

=begin
def search(key)
	Dir.glob("data/*.txt") do |file|
		f = File.open(file)
		f.each_with_index do |line,index|
			if line.include?(key)
				return file,index
			end
		end
		f.close
	end
end

puts "Busque palavras em Arquivos"
puts "Digite uma palavra a ser procurada"
key = gets.chomp

filename, linenumber = search(key)
puts "Arquivo: #{filename} Linha: #{linenumber + 1}"

	
=end


=begin
Busque palavras em Arquivos
Digite uma palavra a ser procurada
React
Arquivo: data/courses.txt Linha: 3

Busque palavras em Arquivos
Digite uma palavra a ser procurada
The
Arquivo: data/games.txt Linha: 6

Busque palavras em Arquivos
Digite uma palavra a ser procurada
Mario
Arquivo: data/games.txt Linha: 1

Busque palavras em Arquivos
Digite uma palavra a ser procurada
halloween
Arquivo: data/filmes.txt Linha: 3
=end

=begin
	

	
=end

# Caso tenham palavras repetidas

def search(key)