=begin
Série de Fibonacci
Escreva um programa que calcule a sequência de Fibonacci de um número. 
Você deve realizar a leitura de dados de uma variável number e depois utilizar 
uma lógica para conseguir gerar a sequência de fibonacci do número.

	A sequência de Fibonacci é uma sequência numérica cujos elementos são números 
	naturais e, a partir do terceiro termo, cada um dos termos é representado pela 
	soma de seus dois antecessores. 1,1,2,3,5,8,13,21,34,55

number = +1 
while number != 100 do 
end
puts number

number = 1
number.each do |fibo|
	fibo = number + 1
	break if fibo += 100
	end

puts fibo

number = 1
number.each do |fibo|
	fibo = number + 1
	break if fibo += 100
	end

puts fibo
=end

# Série de Fibonacci
puts "Digite um número:"
number = gets.chomp.to_i

fibPrev = 0
fib = 1

while fib <= number
    puts fib
    # temp = fib
    # fib += fibPrev
    # fibPrev = temp
    fibPrev, fib = fib, fib+fibPrev
end