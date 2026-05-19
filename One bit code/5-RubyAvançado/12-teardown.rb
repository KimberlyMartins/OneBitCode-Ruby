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
