=begin

                   SELF
A palavra chave self no contexto do código fornecido
refere-se a instância atual da classe Game. 
Ela pode ser usada para se referir a métodos ou variáveis de instância
=end


class Game
	puts "A new object was created #{self}"
	def initialize
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

	def details
		puts "Detalhes do jogo: #{self}"
		
	end
end

game = Game.new #A new object was created Game
puts game #pes-sports-true-[2018, 2019, 2020]
puts game.details #Detalhes do jogo: pes-sports-true-[2018, 2019, 2020]