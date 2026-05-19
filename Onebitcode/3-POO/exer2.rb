=begin
Mapeamento de Transação Financeira

Defina uma classe FinancialTransaction com as caracterícas abaixo:

A instanciação deve definir 4 variáveis de instância:

1- @to

2- @from

3- @amount

4- @completed

Defina métodos getter para @to, @from e @amount

Defina métodos getter + setter para @completed

Obs: Utilizar o attr.
	
=end

class FinancialTransaction
	attr_accessor :completed
	attr_reader :to , :from , :amount
	def initialize(to, from, amount, completed)
		@to = to
		@from = from 
		@amount = amount
		@completed = completed
	end
end

transaction1 = FinancialTransaction.new("me", "you", 10, false)
puts transaction1.to # retorna me
puts transaction1.from # retorna you
puts transaction1.amount # retorna 10
puts transaction1.completed # retorna end
transaction1.completed = true
p transaction1.completed