movies = ["Halloween","Pânico","o Exorcismo"]

#  Indexação e atribuição
puts movies[0] #primeiro filme = Hallloween
puts movies[-1] #último filme = o Exorcismo
puts movies[1,3] #primeiro e último = Halloween e O exorcismo

movies[2] = "Olhos Famintos"
puts movies # Alterou o indice 2 de O Exorcismo para Olhos Famintos
puts movies
movies << "Avatar"
puts movies  # Acrescentou Avatar ao array

# Métodos úteis 
puts movies.length # descobrir tamanho de itens 4 filmes = 4 itens
puts movies.first # #primeiro filme = Hallloween
puts movies.last #último filme = Avatar
movies.append("A Entidade")
puts movies # Acrescentou A Entidade ao array
puts movies.sort() # Ajeita os itens de forma alfabética
puts movies.shuffle() # Embaralha os itens para a gente

# Recuperando indice e valor
movies.each_with_index{|value, index| puts "#{index}-#{value}"} #0-Halloween
#                                                                1-Pânico
#                                                                2-Olhos Famintos
#                                                                3-Avatar
#                                                                3-A Entidade
