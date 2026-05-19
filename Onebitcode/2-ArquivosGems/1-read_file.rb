#                        Lendo arquivos de texto
#               Input = entrada de dados Output = saída de dados
#                    Alternativa 1 File.open = abrin ou exportar arquivo
movies = File.open("data/filmes.txt")
puts movies
puts movies.class
movies.each {|line| puts line.strip}  # puts line ou puts line.strip (strip remove os espaços do lado esquerdo ou direito) 
=begin       # Imprime com as linhas espaçadas
Alien
Predador
halloween
30 dias de noite

Alien vs predador

Amityville


=end
#                    Alternativa 2 File path

file_path = "data/filmes.txt"
File.open(file_path, "r") do |file|
	file.each_line  {|line| puts line.strip unless line.strip.empty? }
end

=begin
Alien
Predador
halloween
30 dias de noite
Alien vs predador   #    removeu a linha que estava vazia
Amityville          #    removeu a linha que estava vazia
=end
