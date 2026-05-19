
=begin
	#                 Utilizando argumentos
ARGV.each{|arg| puts arg}  # Para adicionar argumentos tem q ser em modo de execução no terminal 
                           # logo após o nome do arquivo ruby 4-argv.rb Catapimbas
ARGV.each{|arg| puts arg.class} # Retorna -> Catapimbas
                                #            String

	
=end

=begin
#                     Potência de um número
ARGV.each do |arg|
	pot  = arg.to_i ** 2
	puts "#{arg} ao quadrado é: #{pot}"  ## logo após o nome do arquivo ruby 4-argv.rb 10
end
#ruby 4-argv.rb 10
#10 ao quadrado é 100	

=end

#                      Salvando o conteúdo de argumento em arquivo
#Logo após o nome do arquivo para criar um txt ruby 4-argv.rb SuperMario ResidentEVil SpiderMan

File.open("data/games.txt", "a") do |file|
	ARGV.each do |game|
		file.puts game
	end
end