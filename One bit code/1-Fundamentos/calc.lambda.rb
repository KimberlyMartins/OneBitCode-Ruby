=begin
Calculadora Matemática

Desenvolva um programa que simule uma calculadora matemática possuindo as seguintes operações: soma, subtração, multiplicação e divisão.
Os dois números que serão utilizados nas operações devem ser utilizados como entrada de dados no programa.
As operações devem ser definidas utilizando função lambda.
O programa deve ser executado a todo momento e só será fechado a menos que uma tecla específica seja pressionada.

=end




=begin
sumNum = lambda {|x,y| x + y}
puts sumNum.call(gets.chomp.to_i, gets.chomp.to_i) 

divNum = lambda {|x,y| x / y}
puts divNum.call(gets.chomp.to_f, gets.chomp.to_f)

subNum = lambda {|x,y| x - y}
puts subNum.call(10,5)

multNum = lambda {|x,y| x * y}
puts multNum.call(10,5)

def Calculadora(calc)
	puts "Digite os números a serem somados"
	sumNum = lambda {|x,y| x + y}
	puts sumNum.call(gets.chomp.to_i, gets.chomp.to_i) 

	divNum = lambda {|x,y| x / y}
	"Digite os números a serem somados"
	puts divNum.call(gets.chomp.to_f, gets.chomp.to_f)

	subNum = lambda {|x,y| x - y}
	"Digite os números a serem somados"
	puts subNum.call(10,5)

	multNum = lambda {|x,y| x * y}
	"Digite os números a serem somados"
	puts multNum.call(10,5)
end

puts calc




class Calculadora
	puts "Digite os números a serem somados"
	sumNum = lambda {|x,y| x + y}
	puts sumNum.call(gets.chomp.to_i, gets.chomp.to_i) 
	puts "O resultado é #{sumNum}"

	subNum = lambda {|x,y| x - y}
	"Digite os números a serem somados"
	puts subNum.call(10,5)

	multNum = lambda {|x,y| x * y}
	"Digite os números a serem somados"
	puts multNum.call(10,5)

	divNum = lambda {|x,y| x / y}
	"Digite os números a serem somados"
	puts divNum.call(gets.chomp.to_f, gets.chomp.to_f)
end

puts Calculadora

IMPRIMIU
Digite os números a serem somados
5
4
9
O resultado é #<Proc:0x00007a8dc3989998 calc.lambda.rb:54 (lambda)>
5
50
4
2
2.0
Calculadora


class Calculadora
	puts "Digite os números a serem somados"
	sumNum = lambda {|x,y| x + y}
	puts sumNum.call(gets.chomp.to_i, gets.chomp.to_i) 
	puts "O resultado é #{sumNum}"

	puts "Digite os números a serem subtraídos"
	subNum = lambda {|x,y| x - y}
	puts sumNum.call(gets.chomp.to_i, gets.chomp.to_i)

	puts "Digite os números a serem multiplicados"
	multNum = lambda {|x,y| x * y}
	puts sumNum.call(gets.chomp.to_i, gets.chomp.to_i)

	puts "Digite os números a serem divididos"
	divNum = lambda {|x,y| x / y}
	puts divNum.call(gets.chomp.to_f, gets.chomp.to_f)
end


IMPRIMIU
Digite os números a serem somados
3
5
8
O resultado é #<Proc:0x00007ac220d19568 calc.lambda.rb:90 (lambda)>
Digite os números a serem subtraídos
3
5
8
Digite os números a serem multiplicados
3
5
8
Digite os números a serem divididos
3
5
0.6
Calculadora


  puts "Digite os números a serem subtraídos"
	subNum = lambda {|num1,num2|num1 - num2}
	puts "o resultado é #{subNum.call(gets.chomp.to_i,gets.chomp.to_i)}"




		puts "Qual operação deseja realizar soma, subtração, divisão ou multiplicação?"
	operação = gets.chomp
	if 
  operação == "soma"
  puts "Digite os números a serem somados"
  	sumNum = lambda {|num1,num2|num1 + num2}
	puts "o resultado é #{sumNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
	elsif
	operação == "subtração"
  puts "Digite os números a serem subtraídos"
  subNum = lambda {|num1,num2|num1 - num2}
  puts "o resultado é #{subNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
  elsif 
  operação == "multiplicação"
  puts "Digite os números a serem multiplicados"
  multNum = lambda {|num1,num2|num1 * num2}
  puts "o resultado é #{multNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
  elsif 
  operação == "divisão"
  puts "Digite os números a serem divididos"
  divNum = lambda {|num1,num2|num1 / num2}
  puts "o resultado é #{divNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
  else
  	operação == "q"
	puts "Operação não reconhecida"
end
=end


 
	puts "Qual operação deseja realizar soma, subtração, divisão ou multiplicação?"
	operação = gets.chomp

		if 
		operação == "soma"
  puts "Digite os números a serem somados"
  	sumNum = lambda {|num1,num2|num1 + num2}
	puts "o resultado é #{sumNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
	elsif
	operação == "subtração"
  puts "Digite os números a serem subtraídos"
  subNum = lambda {|num1,num2|num1 - num2}
  puts "o resultado é #{subNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
  elsif 
  operação == "multiplicação"
  puts "Digite os números a serem multiplicados"
  multNum = lambda {|num1,num2|num1 * num2}
  puts "o resultado é #{multNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
  elsif 
  operação == "divisão"
  puts "Digite os números a serem divididos"
  divNum = lambda {|num1,num2|num1 / num2}
  puts "o resultado é #{divNum.call(gets.chomp.to_i,gets.chomp.to_i)}" 
  else
  	operação == "q"
	puts "Operação não reconhecida" 
end






	