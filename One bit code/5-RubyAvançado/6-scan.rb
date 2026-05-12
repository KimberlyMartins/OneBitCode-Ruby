
string = "A linguagem Ruby é poderosa e versátil. Ruby é divertida e fácil de aprender."
pattern = /Ruby/

results = string.scan(pattern)

puts results  # Ruby Ruby
puts results.length # 2

puts "O padrão Ruby foi encontrado #{results.length} vezes na string" # O padrão Ruby foi encontrado 2 vezes na string
puts "As ocorrências encontradas foram #{results.join(',')}" # As ocorrências encontradas foram Ruby,Ruby