phrase = "A linguagem ruby é divertida!"

p phrase.include?("gua") # true
p phrase.start_with?("A") # true
p phrase.end_with?("divertida") # false  ( pois temos o ! no final)