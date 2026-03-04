                            ORM (Object Relational Mapping)
Uma ORM em Ruby é uma técnica que conecta o mundo da programação orientada a objetos com bancos de dados relacionais. Em vez de escrever diretamente comandos SQL para manipular dados, você interage com objetos Ruby que representam tabelas e registros do banco.
Como funciona
- Mapeamento de classes para tabelas: cada classe Ruby corresponde a uma tabela no banco de dados.
- Mapeamento de atributos para colunas: cada atributo da classe corresponde a uma coluna da tabela.
- Instâncias como registros: cada objeto instanciado representa uma linha (registro) da tabela.

Vantagens
- Produtividade: menos código SQL manual.
- Legibilidade: código Ruby mais claro e próximo da lógica de negócio.
- Portabilidade: facilita trocar de banco de dados sem reescrever toda a lógica.
- Recursos extras: suporte a validações, associações (ex.: has_many, belongs_to), callbacks e migrações de banco.
