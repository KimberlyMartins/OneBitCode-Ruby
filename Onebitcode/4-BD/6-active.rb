require 'active_record'   #requisitar o active para o ruby

#Configurar banco de dados para o active record entrar no BD
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '432157',
  database: 'fliperama'
)

# Criação de tabela
ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :nome 
    t.string :email
  end
end

# Salvando iformações no db pelo active record
class User < ActiveRecord::Base
end

user = User.new(nome: 'Gabiré', email: 'gabire@gmail.com')
user.save

#Consultando sem o sql - recuperando os dados
users = User.all # Equivalente a SELECT * FROM users no sql
users.each do |user|
  puts "Nome: #{user.nome}, Email: #{user.email}"
end

=begin
PS C:\Users\Acer\Documents\OneBitCode-Ruby\One bit code\4-BD> ruby .\6-active.rb
-- create_table(:users)
   -> 0.4569s
Nome: Gabiré, Email: gabire@gmail.com

Buscando pelo SQLSHELL OU PGADMIN temos 
fliperama=# SELECT * FROM users;
 id |  nome  |      email
----+--------+------------------
  1 | Gabiré | gabire@gmail.com
(1 linha)

=end

=begin
Por padrão o Active Record cria 2 tabelas no pgadmin a ar_internal_metadata e a schema_migrations
que são administradas diretamente pelo Active.
=end