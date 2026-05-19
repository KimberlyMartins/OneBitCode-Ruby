=begin
	
=end

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

	def to_s
		"#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
	end
end

game = Game.new
puts game 

=begin
antes do override 
A new object was created
#<Game:0x000078a4d4238c68>

depois do override_to_s
A new object was created
pes-sports-true-[2018, 2019, 2020]
=end