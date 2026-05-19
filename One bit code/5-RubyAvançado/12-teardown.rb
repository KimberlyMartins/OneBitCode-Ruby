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
    @itens = {}
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
    products_prices = {"Headphones" => 30, "Book" => 10}
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
end