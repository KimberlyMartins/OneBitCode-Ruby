# Blocks
#São trechos anônimos de códigos que aceitam entradas
#de argumentos de determinado valor
# é um conjunto de códigos que vão ser executados quando determinado nome for chamado
def hello
	yield
end

hello {puts "Hello world"}
hello {puts "Hello palhaçada"}

=begin 
IMPRIME

Hello world
Hello palhaçada
=end

def one_two_three
	yield 1 
	yield 2
	yield 3
end

one_two_three {|number| puts number * 10} 
=begin 
IMPRIME
10
20
30
=end

#        Função de potência de número
power = lambda { |num| num **2}
puts power.call(4) # imprime 16



#       Função que verifica se o número é par 
pair = lambda { |x| x % 2 == 0}
puts pair.call(5) # imprime FALSE
puts pair.call(4) # imprime TRUE

#       Função que divide um número por outro
divNum = lambda {|x,y| x / y}
puts divNum.call(10,5) # imprime 2
puts divNum.call(50,5) # imprime 10