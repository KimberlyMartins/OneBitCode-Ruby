class Game
	#attr_reader :name, :genre, :price
	#attr_writer :name, :genre, :price
	attr_accessor :name, :genre, :price
	attr_reader :multiplayer, :versions
	def initialize(name, genre, multiplayer, versions, price)
	# Variável de instância
	@name = name
	@genre = genre
	@multiplayer = multiplayer
	@versions = versions
	@price = price
	end

	def to_s
		"#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
	end

	def techinal_sheet
		puts "Dados do jogo"
		puts "Nome do jogo: #{@name}"
		puts "Gênero do jogo: #{@genre}"
		puts "Preço do jogo: R$#{@price}"
		puts "Versões: #{@versions}"	
	end
end

=begin
game1 = Game.new
puts game1 
# RETORNA ERRO pq faltaram os 5 parametros do initialize
9-params_initialize.rb:6:in `initialize': wrong number of arguments (given 0, expected 5) (ArgumentError)
	#from 9-params_initialize.rb:27:in `new'
	#from 9-params_initialize.rb:27:in `<main>'
=end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019 ,2020], 100)
puts game1
puts game1.techinal_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [2010], 200)
puts game2
puts game2.techinal_sheet

game3 = Game.new("Alien Isolation", "Terror/Sobrevivência", false, [2014], 200)
puts game3
puts game3.techinal_sheet

=begin  Retorna
Fifa-Esporte-true-[2018, 2019, 2020]
Dados do jogo
Nome do jogo: Fifa
Gênero do jogo: Esporte
Preço do jogo: R$100
Versões: [2018, 2019, 2020]

Alan Wake-Suspense-false-[2010]
Dados do jogo
Nome do jogo: Alan Wake
Gênero do jogo: Suspense
Preço do jogo: R$200
Versões: [2010]

Alien Isolation-Terror/Sobrevivência-false-[2014]
Dados do jogo
Nome do jogo: Alien Isolation
Gênero do jogo: Terror/Sobrevivência
Preço do jogo: R$200
Versões: [2014]
=end