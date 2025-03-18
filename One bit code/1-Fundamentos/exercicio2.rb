=begin
Gerador de E-mail
Escreva um programa Ruby para lê três variáveis: first name, last name e company. A despeito desses valores você deve concatenar as informações para gerar um endereço de e-mail. 
A variável entre firstname e lastname deve ser separado por ponto e a variável lastname e company deve ser separado por @.
Ex:
firstname: fulano
lastname: sicrano
company: obc
fulano.sicrano@obc.com


# 1 TENTATIVA
puts "Gerador de e-mail"
firstname = "Kimberly"
lastname = "Martins" 
company = "google"

puts "#{firstname}.#{lastname}@#{company}.com"


# 2 TENTATIVA
puts "Gerador de e-mail"
puts "Digite o seu nome"
firstname = gets.chomp
puts "Digite o seu sobrenome"
lastname = gets.chomp
company = "google"

puts ""
puts "Seu e-mail é:"
puts "#{firstname}.#{lastname}@#{company}.com"


#   3 TENTATIVA
puts "Gerador de e-mail"
puts "Digite o seu nome"
firstname = gets.chomp
puts "Digite o seu sobrenome"
lastname = gets.chomp
company = "google"

puts ""
puts "Seu e-mail é:"
puts "#{firstname.downcase}.#{lastname.downcase}@#{company}.com"



# 4  TENTATIVA
puts "Gerador de e-mail"
puts "Digite o seu nome"
firstname = gets.chomp
puts "Digite o seu sobrenome"
lastname = gets.chomp
puts "Digite a companhia"
company = gets.chomp

puts ""
puts "Seu e-mail é:"
puts "#{firstname.downcase}.#{lastname.downcase}@#{company.downcase}.com"

=begin  IMPRIME NO TERMINAL
Gerador de e-mail
Digite o seu nome
KIM
Digite o seu sobrenome
MARTINS
Digite a companhia
GOOGLE

Seu e-mail é:
kim.martins@google.com
#          CORREÇÃO

puts "E-mail Generator"
puts "Informe o Nome:"
name = gets.chomp
puts "Informe o Lastname:"
lastname = gets.chomp
puts "Informe a Empresa"
company = gets.chomp

email = ""
email << name.downcase.split.join(".")
email << "."
email << lastname.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"

puts email

=begin  IMPRIME NO TERMINAL
E-mail Generator
Informe o Nome:
kim
Informe o Lastname:
maRTIns
Informe a Empresa
yahOO
kim.martins@yahoo.com
=end



puts "E-mail Generator"
puts "Informe o Nome:"
name = gets.chomp
puts "Informe o Lastname:"
lastname = gets.chomp
puts "Informe a Empresa"
company = gets.chomp

email = ""
email << name.downcase.split.join(".")
email << "."
email << lastname.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"

puts email