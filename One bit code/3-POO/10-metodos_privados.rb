=begin
	      Encapsulamento
Consiste em esconder as propriedades dos objetos para 
poder ter mais segurança, assim como uma cápsula de remédio.

         Método Privado
Método interno de uma classe. Apenas os métodos públicos
dessa classe ou de classes descendentes podem chamá-lo.
 O self é o único receptor de um método private
	
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

	def technical_sheet
		puts "Dados do jogo"
		puts "Nome do jogo: #{@name}"
		puts "Gênero do jogo: #{@genre}"
		puts "Preço do jogo: R$#{@price}"
		puts "Versões: #{@versions}"	
	end

	private  # Método privado
	def apply_discount(discount_percentage)
		@price -= (@price * discount_percentage / 100)
	end

	#Método publico que chama o método privado
	public
	def apply_10_percent_discount
		apply_discount(10)	
	end
end

game1 = Game.new("Alien Isolation", "Terror/Sobrevivência", false, [2014], 200)
puts game1
game1.apply_10_percent_discount
puts game1.price