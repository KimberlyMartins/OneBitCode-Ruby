
string = "A linguagem Ruby é poderosa e versátil. Ruby é divertida e fácil de aprender."
pattern = /Ruby/

results = string.scan(pattern)

puts results  # Ruby Ruby
puts results.length # 2

puts "O padrão Ruby foi encontrado #{results.length} vezes na string" # O padrão Ruby foi encontrado 2 vezes na string
puts "As ocorrências encontradas foram #{results.join(',')}" # As ocorrências encontradas foram Ruby,Ruby

#Extrair todos os dígitos da string com scan
string2 = "A OpenAI lançou o GPT-3 em 2020 e o GPT-4 em 2022."
numbers = string2.scan(/\d+/)
puts "Os números encontrados na string são: #{numbers.join(',')}" # Os números encontrados na string são: 3,2020,4,2022
