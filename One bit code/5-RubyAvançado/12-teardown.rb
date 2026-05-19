=begin
                      SETUP AND TEARDOWN
SETUP: 
Executado antes de cada teste.
Serve para inicializar objetos, variáveis ou qualquer recurso necessário.
Evita duplicação de código, já que você não precisa criar os mesmos objetos em cada método de teste.

TEARDOWN:
Executado depois de cada teste.
Usado para liberar recursos, fechar conexões, apagar arquivos temporários ou restaurar estados.
Garante que um teste não afete o próximo.

Resumindo
O setup cria uma nova instância de BancoDeDados antes de cada teste. setup → prepara o ambiente.
O teardown garante que a conexão seja fechada depois de cada teste.teardown → limpa o ambiente.

Assim, cada teste começa com um banco "limpo" e termina liberando recursos.
=end

require 'minitest/autorun'

class ShoppingCart
  def initialize
    @items = {}
  end

  def add_item(product, quantity)
    @items[product] = quantity
  end

  def remove_item(product)
    @items.delete(product)
  end

  def item_count
    @items.values.sum
  end

  def total_price
    products_prices = {"Headphones" => 30, "Book" => 10}  #preço do produto
    @items.sum {|product, quantity| quantity * products_prices[product]}
  end

  def clear
    @items = {}
  end
end

class TestShoppingCart < Minitest::Test
  def setup
    @cart = ShoppingCart.new
  end

  def teardown
    @cart.clear
  end

  def test_add_item
    @cart.add_item("Laptop", 1)
    assert_equal(1, @cart.item_count, "Falha ao adicionar a o carrinho")
  end

  def test_remove_item
    @cart.add_item("Mouse", 2)
    @cart.remove_item("Mouse")
    assert_equal(0, @cart.item_count, "Falha ao remover item do carrinho")
  end

  def test_total_price
    @cart.add_item("Headphones", 1) #  1 * 30  = uma vez o preço do produto
    @cart.add_item("Book", 2) #  2 * 10 = 2 vezes o preço do produto
    assert_equal(50, @cart.total_price, "Cálculo incorreto do preço total")
  end
end

=begin
Run options: --seed 13088

# Running:

.

Finished in 0.001391s, 719.1141 runs/s, 719.1141 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

Com o remove item
Run options: --seed 46312

# Running:

..

Finished in 0.001806s, 1107.6036 runs/s, 1107.6036 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips



com a soma dos valores
Run options: --seed 6918

# Running:

...

Finished in 0.002288s, 1311.4754 runs/s, 1311.4754 assertions/s.

3 runs, 3 assertions, 0 failures, 0 errors, 0 skips
=end