=begin

Gerenciamento de Veículos
Você está criando um sistema para gerenciar veículos em um estacionamento.
Há dois tipos de veículos que precisam ser tratados: carros e motos.
Ambos têm algumas informações em comum, como placa e marca, mas também têm
informações exclusivas, como a quantidade de portas para carros e a cilindrada para motos.

1-Crie uma classe base chamada Veiculo com os atributos comuns: placa e marca.
Ela deve ter um método chamado detalhes que exibe a placa e a marca do veículo.

2- Crie duas subclasses, Carro e Moto, que herdam de Veiculo.
A classe Carro deve ter um atributo adicional chamado portas, e a classe Moto deve
ter um atributo adicional chamado cilindrada. Cada uma dessas subclasses deve
sobrescrever o método detalhes para incluir os atributos exclusivos.

3-Crie uma função chamada exibir_detalhes que aceita um objeto de qualquer
uma das classes (Carro ou Moto) e chama o método detalhes sobre ele.
Use o polimorfismo para permitir que a função funcione de maneira uniforme com ambos
os tipos de veículos.
=end


=begin
class Vehicles
	def initialize(plate, brand)
		@plate = plate
		@brand = brand
	end

	def details
		puts "Placa: #{@plate}"
		puts "Marca: #{@brand}"
		puts "Portas #{@doors}"
		puts "Cilindradas: #{@cylinder}"	
	end
end

class Car < Vehicles
	attr_accessor :doors
	def initialize(doors)
		@doors = doors
	end
end

class Motorcycle
	def initialize(cylinder)
		@cylinder = cylinder
	end
end

car = Vehicles.new("abc123","Porshe")
puts car.details


retorna
Placa: abc123
Marca: Porshe
Portas 
Cilindradas: 
=end




=begin
	
class Vehicles
	
	def initialize(plate, brand)
		@plate = plate
		@brand = brand
	end
end

class Car < Vehicles
	def initialize(plate, brand, doors)
		@plate = plate
		@brand = brand
		@doors = doors
	end
	def details
		puts "Placa: #{@plate}"
		puts "Marca: #{@brand}"
		puts "Portas #{@doors}"
	end
end

class Motorcycle < Vehicles
	def initialize(plate, brand, cylinder)
		@plate = plate
		@brand = brand
		@cylinder = cylinder
	end
	def details
		puts "Placa: #{@plate}"
		puts "Marca: #{@brand}"
		puts "Cilindradas: #{@cylinder}"	
	end
end

car1 = Car.new("abc123","Porshe",4)
puts car1.details

moto1 = Motorcycle.new("kim6666", "honda", 150)
puts moto1.details

#Retorna
Placa: abc123
Marca: Porshe
Portas 4

Placa: kim6666
Marca: honda
Cilindradas: 150
=end


class Vehicles
	def initialize(plate, brand)
		@plate = plate
		@brand = brand
	end
end

class Car < Vehicles
	def initialize(plate, brand, doors)
		super(plate, brand)
		@doors = doors
	end
	def details
		puts "Placa: #{@plate}"
		puts "Marca: #{@brand}"
		puts "Portas #{@doors}"
	end
end

class Motorcycle < Vehicles
	def initialize(plate, brand, cylinder)
		super(plate,brand)
		@cylinder = cylinder
	end
	def details
		puts "Placa: #{@plate}"
		puts "Marca: #{@brand}"
		puts "Cilindradas: #{@cylinder}"	
	end
end

moto1 = Motorcycle.new("KIM-6666", "Honda", 150)
puts moto1.details

car1 = Car.new("ABS-4444", "Bmw", 5 )
puts car1.details

car2 = Car.new("GAB-0000", "Audi", 5)
puts car2.details

moto2 = Motorcycle.new("ABC-1025", "Yamaha", 250)
puts moto2.details

=begin
Placa: KIM-6666
Marca: Honda
Cilindradas: 150

Placa: ABS-4444
Marca: Bmw
Portas 5

Placa: GAB-0000
Marca: Audi
Portas 5

Placa: ABC-1025
Marca: Yamaha
Cilindradas: 250
=end