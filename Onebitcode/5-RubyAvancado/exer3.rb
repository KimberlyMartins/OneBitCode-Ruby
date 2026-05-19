
=begin
​Exercício: Calculadora Simples com Minitest

Descrição:

Vamos criar uma calculadora simples em Ruby e escrever testes para garantir que as operações

matemáticas básicas estejam corretas. Use o Minitest para criar testes para as funções de adição,

subtração, multiplicação e divisão.

Especificações:

Crie uma classe chamada Calculator que tenha métodos para adição, subtração, multiplicação e divisão.
Escreva testes para cada um desses métodos usando o Minitest.
Certifique-se de testar diferentes cenários, incluindo números positivos, negativos e a divisão por zero.
=end
require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_addition
    result = @calculator.add(3,4)
    assert_equal(7, result, "Falha na adição de números positivos")
  end

    def test_subtraction
    result = @calculator.subtract(8,3)
    assert_equal(5, result, "Falha na subtração de números positivos")
  end

    def test_subtraction_negatives
    result = @calculator.subtract(5,-3)
    assert_equal(8, result, "Falha na subtração de números negativos")
   end

   def test_division_by_zero
    assert_raises(ZeroDivisionError, "Não está gerando uma exceção ao dividir por zero") do 
      @calculator.divide(10,0)
    end
   end
end

=begin
Run options: --seed 20366

# Running:

.

Finished in 0.001782s, 561.1043 runs/s, 561.1043 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips


Run options: --seed 48481


E

Finished in 0.002904s, 344.3526 runs/s, 0.0000 assertions/s.

  1) Error:
TestCalculator#test_addition:
NameError: undefined local variable or method `result' for an instance of TestCalculator
    ./exer3.rb:29:in `test_addition'

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips



Caso de erro
PS C:\Users\Acer\Documents\OneBitCode-Ruby\Onebitcode\5-RubyAvancado> ruby .\exer3.rb
Run options: --seed 38851

# Running:
F

Finished in 0.002139s, 467.5737 runs/s, 467.5737 assertions/s.

  1) Failure:
TestCalculator#test_addition [./exer3.rb:29]:
Falha na adição de números positivos.
Expected: 7
  Actual: 8

1 runs, 1 assertions, 1 failures, 0 errors, 0 skips

DEPOIS DE ADICIONAR TODOS OS TESTES
Run options: --seed 341

# Running:

....

Finished in 0.002931s, 1364.5822 runs/s, 1364.5822 assertions/s.

4 runs, 4 assertions, 0 failures, 0 errors, 0 skips
=end