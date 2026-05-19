=begin
Toda vez que o método .new é chamado, ele cria o objeto e chama o método INITIALIZE
da classe para que o objeto possa ser configurado.

                  Variável de instância
É declarada co o símbolo @. Uma variável de instância é usada
para dar aos objetos seu próprio espaço  privado para armazenar
dados.
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
end

game1 = Game.new  #cria uma instancia do objeto #<Game:0x00007fb2eb7f8f28> A new object was created
puts game1 #<Game:0x00007fb2eb7f8f28
p game1  #Usamos p ao invés de puts para verificar informações da variável de instância. retorna @name="pes", @genre="sports", @multiplayer=true, @versions=[2018, 2019, 2020], @price=100>
