
class Game
	def initialize
	puts "A new object was created"		
	#VARIÁVEL DE INSTANCIA
	@name = "pes"
	@genre = "sports"
	@multiplayer = true
	@versions = [2018,2019,2020]
	@price = 100
	end

	def information
		puts "O jogo é do gênero #{@genre} e as versões #{@versions}"
	end

	def technical_sheet
		puts "Dados do jogo"
		puts "Nome do jogo: #{@name}"
		puts "Gênero do jogo: #{@genre}"
		puts "Preço do jogo: #{@price}"
	end
end

game = Game.new
puts game.information
puts game.technical_sheet