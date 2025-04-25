=begin
Crie um arquivo SQL (no formato do PostgreSQL) com os comandos para criar um banco 
de dados para uma lanchonete armazenar as informações do seu sistema. 
Esse arquivo deve então criar, caso não existam, as seguintes tabelas e colunas:

Clientes
id
nome
telefone
endereço
data de cadastro

Fornecedores
id
nome
telefone
email
data de contratação
observações

Lanches
id
nome
descrição
preço

Pedidos
id
mesa
data e hora do pedido
situação

Ingredientes em estoque
id
nome
categoria
quantidade
=end

#                   Resolução no banco de dados
# -- Crie o banco de dados
CREATE DATABASE db_burguer_queen;

# -- Conecte=se ap banco de dados criado
\c db_burguer_queen;

# -- Crie as tabelas, caso não existam
CREATE TABLE IF NOT EXISTS clientes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  address VARCHAR(255),
  created_at DATE NOT NULL DEFAULT CURRENT_DATE    #default para preencher automaticamente se tiver em branco, current date pega a data do momento
);

CREATE TABLE IF NOT EXISTS suppliers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  email VARCHAR(100),
  hiring_date DATE NOT NULL DEFAULT CURRENT_DATE, #default para preencher automaticamente se tiver em branco, current date pega a data do momento
  notes TEXT
);

CREATE TABLE IF NOT EXISTS snacks (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
  id SERIAL PRIMARY KEY,
  table_number INT NOT NULL,
  order_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,  #timestamp datas com menos variação de tempo
  status VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS stock_ingredients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  category VARCHAR(50),
  quantity INT NOT NULL DEFAULT 0  # para usar inteiro usa-se o INT, e o default 0 é pra iniciar o estoque no 0
);