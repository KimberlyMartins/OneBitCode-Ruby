
=begin
                 ATTR ACCESSOR, READER E WRITER
Podemops usar alguns métodos nos objetos para poupar linhas ao
escrever os getters e setters.

 attr_writer : Cria apenas o método de escrita para determinar
 o atributo (setter)

 attr_reader : Cria apenas o método de leitura para determinado 
 atributo (getter)

attr_accessor : Cria o método de escrita e leitura para o atributo.
	
=end


class Game
	#attr_reader :name, :genre, :price
	#attr_writer :name, :genre, :price
	attr_accessor :name, :genre, :price
	attr_reader :multiplayer, :versions
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
end

game = Game.new
p game.name
game.name= "Resident evil"
p game.name  # attr accessor Lê e Modifica
game.genre= "Suspense"
game.price= 150 # attr accessor Lê e Modifica
p game.genre # attr accessor Lê e Modifica
p game.price  # attr accessor Lê e Modifica
p game.versions # attr reader só LÊ 