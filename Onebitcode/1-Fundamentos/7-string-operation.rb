# Dados do Filme
name = "Alien"

description = "O filme se trata de um alienígena em uma nave"
description2 = <<Text 
O filme #{name} é um clássico do terror de 1979, sendo um dos primeiros reconhecidos por ter uma mulher como protagonista.
Text
puts description2

#                     Indexação começa a busca pelo 0 e não pelo 1 
puts description[0] #  primeiro caractere -  O
puts description[-1] # ultimo caractere - e
puts description[0,4] # do zero ao 4 contando espaço - O fi
puts description[0..4] #inclusivo 4 letras - O fil 


#                      Ou usando .SLICE que funciona igualmente
puts description.slice(0) # O
puts description.slice(0,4) # O fi


#                       Quebrando uma string - usando .SPLIT()
print description.split() #vira array ["O", " ", "f", "i", "l", "m", "e", " ", "s", "e", " ", "t", "r", "a", "t", "a", " ", "d", "e", " ", "u", "m", " ", "a", "l", "i", "e", "n", "í", "g", "e", "n", "a", " ", "e", "m", " ", "u", "m", "a", " ", "n", "a", "v", "e"]
puts description.split() # só separa as palavras
puts description.split("uma") # O filme se trata de um alienígena em nave (cortou o uma)


#                         Separa os caracteres um a um  - usando .CHARS
puts description.chars   # só separa 
print description.chars  # separa dentro de um array 
puts "" # pular linha no terminal


#                         Contagem de caracteres - usando .COUNT
puts description.count("a")


#                          Maiúsculo e Minúsculo usando .UPCASE .DOWNCASE
puts description.upcase # O FILME SE TRATA DE UM ALIENÍGENA EM UMA NAVE
puts description.downcase # o filme se trata de um alienígena em uma nave
puts description.capitalize # Primeira letra maius e o resto min - o FILME SE TRATA DE UM ALIENÍGENA EM UMA NAVE
puts description.swapcase #Primeira letra min e o resto maiusc - o FILME SE TRATA DE UM ALIENÍGENA EM UMA NAVE
puts description.chop # remove o ultimo caratere - O filme se trata de um alienígena em uma nav


#         Verificação de indice usando .INDEX para saber em que posição a palavra esté
puts description.index("nave")


#         Alterar palavras - usando .GSUB("","")
puts description.gsub("nave","espaço") # Primeiro a palavra que quer trocar e depois a desejada - O filme se trata de um alienígena em uma espaço


#        Outras operações 
puts "Ruby".center(10, "-") # ---Ruby---
puts "=" * 20  # ====================
puts description.include?("filme") # se descrição incluir filme, retorna true
puts "       Ruby".lstrip # remove espaço em branco da esquerda
puts "Ruby     ".rstrip # remove espaço em branco da direita
puts "     Ruby     ".strip # remove espaço em branco da esquerda e direita então é mais usado