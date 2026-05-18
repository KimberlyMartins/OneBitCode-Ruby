=begin
​Crie um programa que solicite ao usuário uma data no formato "dd/mm/aaaa" e verifique se a entrada corresponde a este formato. Se sim, o programa deve imprimir a data no formato "aaaa-mm-dd". Caso contrário, deve exibir uma mensagem de erro.
=end

def verificar_e_converter_data(string)
  if string =~/\A(\d{2})\/(\d{2})\/(\d{4})\z/
    dia, mes, ano = string.scan(/\d+/)
    nova_data = "#{ano}- #{mes}- #{dia}"
    puts "A nova data é #{nova_data}"
  else
    puts "A data inserida não está no formato correto 'dd/mm/yyy'"
  end
end

#Solicitar ao usuario a data 
puts "Insira uma data n formato dd/mm/yyyy"
data = gets.chomp

verificar_e_converter_data(data)

=begin
Insira uma data n formato dd/mm/yyyy
07/08/1996
A nova data é 1996- 08- 07

Insira uma data n formato dd/mm/yyyy
10/1995/19
A data inserida não está no formato correto 'dd/mm/yyy'
=end