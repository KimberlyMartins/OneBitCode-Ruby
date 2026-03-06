require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '432157',
  database: 'estoque'
)

ActiveRecord::Schema.define do
  create_table :categories do |t|
    t.string :name
  end

  create_table :products do |t|
    t.string :name
    t.integer :category_id
    t.integer :stock_quantity, default: 0
  end
end

class Category < ActiveRecord::Base
  has_many :products
end

class Product < ActiveRecord::Base
  belongs_to :category

  def decrease_stock(amount)
    if self.stock_quantity >= amount
       self.stock_quantity -= amount
       self.save
      else
        puts "There is insufficient stock to complete the operation." # Não há estoque suficiente para realizar a operação"
    end
 end

      def increase_stock(amount)
        self.stock_quantity += amount
        self.save
      end
end

category = Category.create(name: 'Eletronics')

product1 = category.products.create(name: 'Smartphone', stock_quantity: 10)
product2 = category.products.create(name: 'Notebook', stock_quantity: 5)

product1.decrease_stock(3)
product2.increase_stock(5)

all_products = Product.all
all_products.each do |product|
  puts "Name: #{product.name}, Category: #{product.category.name}, Stock: #{product.stock_quantity}"
end

=begin
-- create_table(:categories)
   -> 0.4947s
-- create_table(:products)
   -> 0.0323s
Name: Smartphone, Category: Eletronics, Stock: 7
Name: Notebook, Category: Eletronics, Stock: 10
=end
