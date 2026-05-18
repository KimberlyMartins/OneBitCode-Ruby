=begin
                                 MINITEST
Minitest é um módulo da biblioteca padrão Ruby que fornece uma suite completa de testes: unitários, de especificação (spec), mocks/stubs e benchmarks.
É minimalista e rápido, permitindo que o código do framework seja lido em pouco tempo.

Para usar o minitest automaticamente, requisitamos (require 'minitest/autorun') no início do seu teste. (Ele cuida de rodar automaticamente todos os testes que você definiu na classe ou no estilo spec.) Assim, você não precisa escrever manualmente um comando para iniciar os testes — basta rodar o arquivo Ruby e o autorun executa tudo.
=end

require "minitest/autorun"

def sum(a,b)
  a + b
end

def palindromo?(palavra)
  palavra.downcase == palavra.downcase.reverse
end

class TestMathematics < Minitest::Test
  def test_sum_method
    assert_equal(5, sum(3,2))
  end
   def test_sum_method_again
    assert_equal(7, sum(4,2))
  end
end

class TestPalindromo < Minitest::Test
  def test_palindromo
    assert_equal(true, palindromo?('ovo'))
    assert_equal(true, palindromo?('Ame a ema')) #Não da erro por conta do downcase
    assert_equal(false, palindromo?('Olá)'))
  end
end

=begin
require "minitest/autorun"

def sum(a,b)
  a + b
end

class TestMathematics < Minitest::Test
  def test_sum_method
    assert_equal(5, sum(3,2))
  end
end
Run options: --seed 21919

# Running:

.

Finished in 0.002405s, 415.7658 runs/s, 415.7658 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips


Teste com a falha 

require "minitest/autorun"

def sum(a,b)
  a + b
end

class TestMathematics < Minitest::Test
  def test_sum_method
    assert_equal(5, sum(3,2))
  end
   def test_sum_method_again
    assert_equal(7, sum(4,2))
  end
end

 RETORNA 
Run options: --seed 976

# Running:

F.

Finished in 0.002431s, 822.6729 runs/s, 822.6729 assertions/s.

  1) Failure:
TestMathematics#test_sum_method_again [./10-test.rb:14]:
Expected: 7
  Actual: 6

2 runs, 2 assertions, 1 failures, 0 errors, 0 skips

COM PALINDROMO RETORNA 
Run options: --seed 42028

# Running:

.F.

Finished in 0.003477s, 862.9369 runs/s, 1438.2281 assertions/s.

  1) Failure:
TestMathematics#test_sum_method_again [./10-test.rb:18]:
Expected: 7
  Actual: 6

3 runs, 5 assertions, 1 failures, 0 errors, 0 skips
=end