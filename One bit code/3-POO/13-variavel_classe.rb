class Game
	#attr_reader :name, :genre, :price
	#attr_writer :name, :genre, :price
	attr_accessor :name, :genre, :price
	attr_reader :multiplayer, :versions

	# Variável de classe para rastrear número de jogos
	@@num_jogos = 0


	def initialize(name, genre, multiplayer, versions, price)
	# Variável de instância
	@name = name
	@genre = genre
	@multiplayer = multiplayer
	@versions = versions
	@price = price

	#Incrementando contador ao criar novos objetos
	@@num_jogos += 1
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

	def self.total_games
		@@num_jogos
	end
end


game1 = Game.new("Fifa", "Esporte", true, [2018, 2019 ,2020], 100)
puts game1
puts game1.techinal_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [2010], 200)
puts game2
puts game2.techinal_sheet

game3 = Game.new("Alien Isolation", "Terror/Sobrevivência", false, [2014], 200)
puts game3
puts game3.techinal_sheet


puts Game.total_games

