#                      Para saber o diretório atual 
puts Dir.pwd

#                    Criar diretório
#Dir.mkdir "teste"

#                    Listar arquivos e pastas 
puts Dir.glob "*"
=begin
Retorna
1-read_file.rb
2-write_file.rb
3-rename_delete.rb
4-argv.rb
5-diretorio.rb
data
teste
=end

#       Outra forma de listar arquivos e pastas 
Dir.glob("*")  do |file|
	puts file 
end

=begin
Retorna
1-read_file.rb
2-write_file.rb
3-rename_delete.rb
4-argv.rb
5-diretorio.rb
data
teste
=end


#                   Listar apenas arquivos Ruby
puts Dir.glob "*.rb"

=begin
Retorna
1-read_file.rb
2-write_file.rb
3-rename_delete.rb
4-argv.rb
5-diretorio.rb
=end

#                  Navegando entre diretórios 
Dir.chdir "data"
puts Dir.pwd

puts Dir.glob "*"

=begin
Retorna
/home/kim/One bit code/2-ArquivosGems/data
courses.txt
filmes.txt
games.txt
=end