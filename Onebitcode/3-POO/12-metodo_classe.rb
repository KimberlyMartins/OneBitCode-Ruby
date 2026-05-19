=begin
	    Método de classe
Com o self é possível criar métodos de classe, que não precisam 
de uma instância para serem chamados. Você também pode utilizá-lo para se referir a
atributos do objeto atual.
	
=end

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

	# Método de classe para calcular o preço com desconto  #self
	def self.discounted_price(price, discount_percentage)
		price  -= (price * (discount_percentage.to_f / 100))
		
	end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019 ,2020], 100)
puts game1
puts game1.techinal_sheet
puts Game.discounted_price(game1.price, 20)

game3 = Game.new("Alien Isolation", "Terror/Sobrevivência", false, [2014], 200)
puts game3
puts game3.techinal_sheet
puts Game.discounted_price(game3.price, 30)
