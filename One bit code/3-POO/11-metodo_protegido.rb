=begin
	           Método Protegido
A diferença entre ele e o private, é que o método protected 
pode ter como receptor qualquer instância de sua classe.

Utilizando o:
protected
	def discounted_price(discount_percentage)
		@price -= (@price * (discount_percentage.to_f / 100))
	end


e chamando na instancia com o send:
game1.send(:discounted_price,20)
puts game1.techinal_sheet

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

	#      Método protegido
	protected
	def discounted_price(discount_percentage)
		@price -= (@price * (discount_percentage.to_f / 100))
	end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019 ,2020], 100)
puts game1
puts game1.techinal_sheet
game1.send(:discounted_price,20)
puts game1.techinal_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [2010], 200)
puts game2
puts game2.techinal_sheet
game2.send(:discounted_price,30)
puts game2.techinal_sheet

game3 = Game.new("Alien Isolation", "Terror/Sobrevivência", false, [2014], 200)
puts game3
puts game3.techinal_sheet
game3.send(:discounted_price,40)
puts game3.techinal_sheet

=begin
	
Fifa-Esporte-true-[2018, 2019, 2020]
Dados do jogo
Nome do jogo: Fifa
Gênero do jogo: Esporte
Preço do jogo: R$100   #  PRIMEIRO RETORNA O VALOR NORMAL
Versões: [2018, 2019, 2020]

Dados do jogo
Nome do jogo: Fifa
Gênero do jogo: Esporte
Preço do jogo: R$80.0  #  DEPOIS O VALOR COM O DESCONTO
Versões: [2018, 2019, 2020]

Alan Wake-Suspense-false-[2010]
Dados do jogo
Nome do jogo: Alan Wake
Gênero do jogo: Suspense
Preço do jogo: R$200   # PRIMEIRO RETORNA O VALOR NORMAL
Versões: [2010]

Dados do jogo
Nome do jogo: Alan Wake
Gênero do jogo: Suspense
Preço do jogo: R$140.0  # DEPOIS O VALOR COM O DESCONTO
Versões: [2010]

Alien Isolation-Terror/Sobrevivência-false-[2014]
Dados do jogo
Nome do jogo: Alien Isolation
Gênero do jogo: Terror/Sobrevivência
Preço do jogo: R$200    # PRIMEIRO RETORNA O VALOR NORMAL
Versões: [2014]

Dados do jogo
Nome do jogo: Alien Isolation
Gênero do jogo: Terror/Sobrevivência
Preço do jogo: R$120.0   # DEPOIS O VALOR COM O DESCONTO
Versões: [2014]
	
=end