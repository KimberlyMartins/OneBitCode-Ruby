=begin
                              MINITEST EM UMA CLASSE
Em resumo, o Minitest é como um fiscal automático que garante que sua classe Ruby faz exatamente o que deveria.
require 'minitest/autorun': carrega o Minitest e executa os testes automaticamente.
setup: método especial que roda antes de cada teste, útil para inicializar objetos.
assert_equal: verifica se o valor esperado é igual ao valor obtido.
Cada método que começa com test_ é considerado um caso de teste.
=end

require 'minitest/autorun'
class Pessoa
    attr_accessor :nome, :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def apresentar
        "Olá, sou #{nome} e tenho #{idade} anos"
    end
end

class TestPessoa < Minitest::Test
  def setup
    @p1 = Pessoa.new("João", 30)
  end
  def test_initialize
    assert_equal("João", @p1.nome)
    assert_equal(30, @p1.idade)
  end

  def test_apresentar
    assert_equal("Olá, sou João e tenho 30 anos", @p1.apresentar)
  end
end

=begin
  
Run options: --seed 46479

# Running:

.F

Finished in 0.018858s, 106.0547 runs/s, 159.0820 assertions/s.

TestPessoa#test_apresentar [./11-test._class.rb:27]:
Expected: "Olá, sou João e tenho 30 anos"
  Actual: "Olá eu sou João e tenho 30 anos"

2 runs, 3 assertions, 1 failures, 0 errors, 0 skips



Run options:
 --seed 23579

# Running:

..

Finished in 0.003808s, 525.2515 runs/s, 787.8772 assertions/s.

2 runs, 3 assertions, 0 failures, 0 errors, 0 skips
=end






