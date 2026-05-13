=begin
               EXTRAÇÃO DE NÚMEROS NAS EXPRESSÕES REGULARES 

# /\\d+/: Esta expressão regular corresponde a um ou mais dígitos numéricos de 0 a 9. Ela pode encontrar qualquer sequência contínua de dígitos em uma string.

# /-?\\d+/: Esta expressão regular corresponde a um hífen opcional 
# seguido por um ou mais dígitos numéricos de 0 a 9.
=end

string = "A temperatura é 13 graus Celsius e o preço é 19,99"
numeros_inteiros = string.scan(/-?\d+/)
numeros_decimais = string.scan(/-?\d+\.d+/)

puts "Números inteiros encontrados: #{numeros_inteiros.join(',')}"
puts "Números decimais encontrados: #{numeros_decimais.join(',')}"