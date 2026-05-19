=begin
	  Herança
Para herdar características de outra classe, adicione na frente do nome de uma
classe filha o símbolo de menor e depois o nome da classe pai.

class ClasseFilha < ClassePai
end
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
end

class DownloadGame < Game
	attr_accessor :download_size

	def initialize(nome, genre, multiplayer, versions, price, download_size)
		super(nome, genre, multiplayer, versions, price)
		@download_size = download_size	
	end
end


game1 = Game.new("Fifa", "Esporte", true, [2018, 2019 ,2020], 100)
puts game1
puts game1.techinal_sheet

game2 = DownloadGame.new("Call of Duty", "Acção", true, ["Black Ops"], 100, 60)
puts game2
puts game2.techinal_sheet

=begin
Fifa-Esporte-true-[2018, 2019, 2020]
Dados do jogo
Nome do jogo: Fifa
Gênero do jogo: Esporte
Preço do jogo: R$100
Versões: [2018, 2019, 2020]

Call of Duty-Acção-true-["Black Ops"]  # Herdou os dados da classe Game
Dados do jogo
Nome do jogo: Call of Duty
Gênero do jogo: Acção
Preço do jogo: R$100
Versões: ["Black Ops"]
=end