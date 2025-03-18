=begin
	
rescue StandardError => e
	
=end

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

	def name=(new_name)
		@name = new_name		
	end

	def genre=(new_genre)
		@genre = new_genre
	end

	def price=(new_price)
		@price = new_price
		
	end
end

game = Game.new
puts game.name #pes
game.name="fifa" 
game.genre= "Football"
game.price= 30


puts game.name #fifa
puts game.price #30
puts game.genre #Football
