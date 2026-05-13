=begin
               EXTRAÇÃO DE NÚMEROS NAS EXPRESSÕES REGULARES 

# /\\d+/: Esta expressão regular corresponde a um ou mais dígitos numéricos de 0 a 9. Ela pode encontrar qualquer sequência contínua de dígitos em uma string.

# /-?\\d+/: Esta expressão regular corresponde a um hífen opcional 
# seguido por um ou mais dígitos numéricos de 0 a 9.
=end

string = "A temperatura é 13 graus Celsius e o preço é 19.99"
numeros_inteiros = string.scan(/-?\d+/)
numeros_decimais = string.scan(/-?\d+\.\d+/)

puts "Números inteiros encontrados: #{numeros_inteiros.join(',')}" # Números inteiros encontrados: 13,19,99
puts "Números decimais encontrados: #{numeros_decimais.join(',')}" # Números decimais encontrados: 19.99

# EXTRAIR E SOMAR NÚMEROS INTEIROS COM SCAN
string2 = "Tenho 3 maçãs, 2 laranjas e 5 bananas em minha cesta"
numbers = string2.scan(/\d+/).map(&:to_i)
sum = numbers.sum
puts "Os números encontrados são: #{numbers.join(',')}" #Os números encontrados são: 3,2,5
puts "A soma de todos os números é: #{sum}" #A soma de todos os números é: 10