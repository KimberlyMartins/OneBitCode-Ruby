# Escrever em arquivo de texto
#importar e abrir arquivo de texto
#Alternativa 1 

	File.open("data/teste.txt", "w") do |file| #o arquivo não precisa existir para o modo de escrita
	file.puts "Criando arquivo de texto" # Criando arquivo de texto
	file.write "Hello World" # Hello WorldOlá mundo   -  write não faz a quebra da linha (não pula pra outra linha nem dá espaço)
	file.puts "Olá mundo" #
	file.puts "React native" #
	file.puts "ReactJs" #
end
	
=begin
File.open("data/courses.txt", "w") do |file|   #sobreescreve as informaçoes do txt ( vai mudar a variável quando iniciar)
	puts "Qual curso deseja fazer?"
	course = gets.chomp
	file.puts course
end

File.open("data/courses.txt", "a") do |file|   # a de append - não sobreescreve a variável, mas vai adicionando outras 
	puts "Qual curso deseja fazer?"
	course = gets.chomp
	file.puts course
end	
=end