# Condicionais IF e ELSE ( SE SENÃO)
#a = 10
# b = 20

# if a > b
#     puts "#{a} é maior que #{b}"
# else 
#     puts "#{b} é maior que #{a}" 
# end
puts "Digite o nome do Filme:"
name = gets.chomp

puts "Digite o ano de lançamento do Filme:"
yearLaunch = gets.chomp.to_i

puts "Digite a nota de classificação do Filme:"
classification = gets.chomp.to_f

if classification > 8.0 and yearLaunch > 2015
    puts "O filme #{name} é bom. Recomendo assisti-lo."
else
    puts "O filme #{name} ainda não atingiu uma boa nota. Por isso não recomendo."
end

=begin
Digite o nome do Filme:
ALien Romulus
Digite o ano de lançamento do Filme:
2024
Digite a nota de classificação do Filme:
9.5
O filme ALien Romulus é bom. Recomendo assisti-lo.
= end