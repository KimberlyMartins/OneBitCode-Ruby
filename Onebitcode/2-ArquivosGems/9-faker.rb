require "faker"
require "csv"

puts Faker.class
puts Faker::Name.class
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name

puts Faker::Music.instrument
puts Faker::Sports::Football.player

# Dataset fake 
dados = []

# Armazena dados 20 vezes
20.times do 
	nome = Faker::Name.name
	email = Faker::Internet.email
	phone = Faker::PhoneNumber.phone_number

	dados << [nome, email, phone]
end

#     Exporta para csv
arquivo_csv = "data/dados_faker.csv"
CSV.open(arquivo_csv, "w") do |csv|
	csv << ["Nome" , "Email", "Telefone"]
	dados.each do |dado|
		csv << dado
	end
end

puts "Dados salvos em #{arquivo_csv}"