=begin
	                      CSV
Csv é a sigla para Comma Separated Values (valores separados 
por vírgula). É um arquivo de texto simples que armazena informações
de planilhas e tabelas.	
=end

require "csv"

# Escrevendo arquivo CSV

CSV.open("data/example.csv", "w") do |csv|
	csv << ["Nome", "Idade", "Cidade"]
	csv << ["Alice", 25, "São Paulo"]
	csv << ["Bob", 30, "Rio de Janeiro"]
	csv << ["Carol", 28, "Belo Horizonte"]
end

# Lendo dados CSV

CSV.foreach("data/example.csv", headers: true) do |row|
	nome = row["Nome"]
	idade = row["Idade"]
	cidade = row["Cidade"]
	puts "Nome:#{nome}, Idade:#{idade}, Cidade:#{cidade}"
end

=begin RETORNA 
Nome:Alice, Idade:25, Cidade:São Paulo
Nome:Bob, Idade:30, Cidade:Rio de Janeiro
Nome:Carol, Idade:28, Cidade:Belo Horizonte
=end