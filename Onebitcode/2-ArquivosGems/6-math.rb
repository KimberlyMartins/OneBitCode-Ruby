=begin
 Math
 O módulo math em ruby é um módulo nativo para funções matemáticas.
puts Math.class
puts Math.methods.sort #Lista todos os métodos de operações matemáticas
p Math.methods.sort # Lista em forma de array

=end

puts Math.sqrt(4) #  Retorna a raiz quadrada 2.0
puts Math.sqrt(5) #  Retorna a raiz quadrada 2.23606797749979
puts Math.sin(90) #  Retorna o seno 0.8939966636005579
puts Math::PI     #  Retorna o número PI 3.141592653589793

# Calcular área e perímetro de um círculo. 
#A área de um círculo é pi vezes o raio elevado ao quadrado (A = π r²). 
def calcular_area(raio)
	return Math::PI * raio**2
end

#Calcular o perímetro de um círculo
#Se perímetro P é sempre proporcional ao seu diâmetro D. Lembrando que o
# diâmetro equivale duas vezes o raio r, temos: P = π*D = π*2r.
def calcular_perimetro(raio)
	return 2 * Math::PI * raio
end

# Entrada de dados 
puts "Digite o raio do círculo"
raio = gets.chomp.to_f

# Executando a função
area = calcular_area(raio)
perimetro = calcular_perimetro(raio)

# Exibindo os resultados
puts "Área do círculo com raio #{raio} é #{area.round(2)}" # Round arredondar (2) duas casas decimais
puts "Perímetro do círculo com raio #{raio} é #{perimetro.round(2)}" # Round arredondar (2) duas casas decimais
=begin
Retorna
Digite o raio do círculo
3 ( numero digitado no chomp)
Área do círculo com raio 3.0 é 28.27
Perímetro do círculo com raio 3.0 é 18.85
=end