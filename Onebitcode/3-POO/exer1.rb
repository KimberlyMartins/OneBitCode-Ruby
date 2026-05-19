=begin
	
Defina uma classe Projeto com informações a seguir:
A instanciação deve definir 3 variáveis de instância:
1-name="Automação Web"
2-budget=10000
3-members=["Fulano", "Sicrano"]

Defina 3 métodos getter (name, budget, members) para retornar
o valor das respectivas variáveis de instância

Defina 1 método setter (budget=) para atualizar o valor da variável de instância @budget
A classe também deve ter o método to_s para retornar o valor das variáveis de instância

Escreva um programa Ruby calcula a área de um quadrado e um retângulo. Em cada um dos casos,
deve ser criado um módulo a parte, para que este seja executado de forma independente de 
outro, ainda que ambos estejam no mesmo arquivo.
	
=end

class Projeto
	def initialize
		@name = "Automação Web"
		@budget = 10000
		@members =["Fulano", "Siclano"]
	end

	def name 
		@name
	end

	def budget
		@budget
	end

	def members
		@members
	end

	def budget=(new_budget)
		@budget = new_budget
	end

	def to_s
		"#{@name}-#{@budget}-#{@members}"
	end
end


=begin
tentativa 1
project = Projeto.new
puts project
puts 

puts project.budget=20
puts project.name, project.members, project.budget
=end

project = Projeto.new
p project.name
p project.budget

project.budget = 25000
p project.budget
