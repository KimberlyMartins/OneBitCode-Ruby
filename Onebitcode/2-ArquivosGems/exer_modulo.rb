
=begin
	                     Cálculo Área
Escreva um programa Ruby calcula a área de um quadrado e um retângulo.
Em cada um dos casos, deve ser criado um módulo a parte, para que este seja
executado de forma independente de outro, ainda que ambos estejam no mesmo arquivo.	


A = L . L
ou
A = L²


A = 10 cm . 10 cm
A = 100 cm²
ou
A = (10 cm)² = 100 cm²

module RectangleArea
	def rec_area
		
	end
end

A = b x h

Onde,
A: área
b: base
h: altura

Aplicando-se a fórmula para calcular a área, num retângulo de base 10 cm e altura de 5 cm, temos:

reto A espaço igual a espaço reto b espaço reto x espaço reto h reto A espaço igual a 
espaço 10 espaço cm espaço reto x espaço 5 espaço cm reto A espaço igual a espaço 50 espaço cm ao quadrado

Portanto, o valor da área da figura é de 50 cm2.


module SquareArea
	def self.sq_area(area)
		area * area
	end
end
puts  "The square area is #{SquareArea.sq_area(10)} cm²"


module RectangleArea
	def self.rec_area(rect)
		rect = base * height
		base = 10
		height = 5
	end
end



=end


module Square
    def self.area(side)
        side * side
    end
end

module Rectangle 
    def self.area(base, width)
        base * width
    end
end

puts "The square area is #{Square.area(10)} cm²"
puts "The rectangle area is #{Rectangle.area(20, 20)} cm²"

