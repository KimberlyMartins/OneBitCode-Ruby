puts "Digite o primeiro número:"
num1 = gets.chomp.to_i
puts "Digite o segundo número"
num2 = gets.chomp.to_i

#        Operadores Aritméticos
sum = num1 + num2
subt = num1 - num2
div = num1 / num2
mult = num1 * num2
mod = num1 % num2  #sobra da divisão
exp = num1 ** num2  # exponenciação, multiplica o numero por ele mesmo tantas vezes

# puts sum, subt, div, mult, mod, exp

#        Operadores Atribuição
num1 += 1 # num1 = num1 + 1
num1 -= 1 # num1 = num1 - 1
num1 *= 1 # num1 = num1 * 1
num1 /= 1 # num1 = num1 / 1 

#        Atribuição paralela
a, b = 5, 4
a, b = b, a # inverte valores
puts a
puts b

#       Operadores de Comparação
bigger = num1 > num2 # maior que
smaller = num1 < num2 # menor que
equal = num1 == num2 #se é igual - comparação
different = num1 != num2 # se o número é diferente do outro
bigger_equal = num1 >= num2 # maior ou igual 
smaller_equal = num1 <= num2 # menor ou igual

#       Operadores Lógicos
puts ((2>4) and (3>1)) # E - as duas tem q ser vdd pra retornar true
puts ((2>4) or (3>1)) # OU - uma tem que ser vdd pra retornar true 
puts ! ((2>4) and (3>1))

#      Operadores Especiais
print (1..5).to_a   # transforma em array na sequência
print (1...5).to_a   # transforma em array na sequência
puts ('a'..'z').to_a
print ('ab'...'yz').to_a

#      Precedência de Operadores

puts 3 + 2 * 5  # primeiro a multiplicação é resolvida
puts (3+2) *5  # colocando a operação desejada primeiro em ()
puts 2 ** (2 + 2)
puts 2 ** (3 * 2)

# 8-Operador Binary Left Shit
name = ""
name << "Fulano"  # para adicionar coisas nas aspas ou arrays
name << " Ciclano"
puts name