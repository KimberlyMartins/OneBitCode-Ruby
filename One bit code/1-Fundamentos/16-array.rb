#     Criação do Array[]

movies = []
puts movies.class # retorna Array

movies2= Array.new
puts movies2.class  # retorna Array

movies_test = ["Halloween","Pânico"]
puts movies_test  #Halloween
                  #Pânico

two_movies = Array.new(2, "Sexta feira 13") #cria 2 vezes o sexta feira 13
puts two_movies #retorna Sexta feira 13
                #        Sexta feira 13


#              Usando exponenciação  
numbers = Array.new(5) {|x| x ** 2}
puts numbers  # Retorna 0 1 4 9 16

#              Array de números

num = Array.[](1,2,3)
puts num  # Retorna 1 2 3

num2 = Array(1..5)
puts num2 # Retorna 1 2 3 4 5

#      Array multiplos valores
movie = ["Pânico", 1996,50.00, true]
puts movie

#     Iterando itens (for, while, each) Passar pelos itens e apresentar dentro de um programa
for mov in movies_test
	puts mov
end

i = 0 
while i < movies_test.length
	puts movies_test[i]
	i+=1
end


movies_test.each{|a| puts a}