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

=begin
Explicação da expressão acima 
STRING 1:
string.scan(/-?\d+/) → procura qualquer sequência de dígitos (com ou sem sinal negativo).
Resultado: ["13", "19", "99"] 

 Note que 19.99 foi quebrado em duas partes (19 e 99), porque o regex não considera o ponto como parte do número.

string.scan(/-?\d+\.\d+/) → procura números decimais com ponto.
Resultado: ["19.99"].

STRING 2
string2.scan(/\d+/) → captura todos os dígitos: ["3", "2", "5"].

.map(&:to_i) → converte cada string em inteiro: [3, 2, 5].

.sum → soma os valores: 10.


Em resumo:
scan percorre a string e retorna todas as correspondências.

O regex que você usou para inteiros (\d+) também pega partes de decimais, por isso 19.99 virou 19 e 99.

Para evitar isso, use um padrão que aceite opcionalmente a parte decimal: \d+(?:\.\d+)?.
=end 