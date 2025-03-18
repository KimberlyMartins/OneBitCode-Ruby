=begin
	Agenda de Contatos
Escreva um programa Ruby para lê três variáveis: nome, idade e cidade.
A despeito desses valores você deve utilizá-los para alimentar uma
planilha de contatos e posteriormente, salvar o arquivo com o nome contatos.csv.


require "csv"

CSV.open("data/contatos.csv", "w") do |csv|
	csv << ["Nome", "Idade", "Cidade"]
	csv << ["Kimberly", 29, "Curitiba"]
	csv << ["Bob", 30, "Rio de Janeiro"]
	csv << ["Carol", 28, "Belo Horizonte"]
end

CSV.foreach("contatos.csv", headers: true) do |row|
	nome = row["Nome"]
	idade = row["Idade"]
	cidade = row["Cidade"]
	puts "Nome:#{nome}, Idade:#{idade}, Cidade:#{cidade}"
end
=end

require "csv"

puts "Informe o nome:"
nome = gets.chomp

puts "Informe a idade:"
idade = gets.chomp.to_i

puts "Informe a cidade:"
cidade = gets.chomp

CSV.open("data/contatos.csv", "a") do |csv|
	csv << [nome, idade, cidade]
end

CSV.foreach("data/contatos.csv", headers:true) do |row|
	puts "Nome:#{row["Nome"]}, Idade: #{row["Idade"]}, Cidade #{row["Cidade"]}"
end

=begin
Retorna os gets.chomp
Nome:Kimberly, Idade: Curitiba, Cidade 28
Nome:Gabriel, Idade: Curitiba, Cidade 28
=end