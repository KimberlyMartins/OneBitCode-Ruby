=begin
           Método get
Getters e Setters servem para manipular atributos do objeto (informações do objeto)
Retornar e acessar valores de uma variável de instância (lê os valores
das variáveis nos permitindo acessá-las sempre que necessário)
=end


class Game
	puts "A new object was created #{self}"
	def initialize
	# Variável de instância
	@name = "pes"
	@genre = "sports"
	@multiplayer = true
	@versions = [2018,2019,2020]
	@price = 100
	end

	def to_s
		"#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
	end

	def details
		puts "Detalhes do jogo: #{self}"
		
	end

	def name
		@name
	end

	def genre
		@genre
	end

	def price
		@price
	end

	def multiplayer
		@multiplayer
	end
end

game = Game.new
puts game.genre, game.multiplayer, game.name