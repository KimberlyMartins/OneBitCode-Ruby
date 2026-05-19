                                           NoSQL
NoSQL significa “Not Only SQL” e se refere a bancos de dados não relacionais. Diferente dos bancos tradicionais, que organizam informações em tabelas e linhas, os bancos NoSQL oferecem estruturas mais flexíveis, como documentos em formato JSON, pares de chave-valor, colunas ou grafos. Essa flexibilidade permite lidar com dados variados e em constante mudança, sem a necessidade de um esquema fixo.
A principal vantagem do NoSQL é a escalabilidade horizontal, ou seja, a capacidade de distribuir dados em vários servidores para suportar milhões de usuários e grandes volumes de informação. Além disso, esses bancos são muito usados em aplicações modernas que exigem alta performance e respostas rápidas, como redes sociais, sistemas de mensagens em tempo real e plataformas de big data.
Entre os benefícios estão a agilidade para adaptar-se a projetos dinâmicos, a facilidade em lidar com dados não estruturados e a alta disponibilidade. Por outro lado, o NoSQL pode apresentar algumas limitações, como menor padronização entre sistemas e, em alguns casos, menor consistência imediata dos dados, já que muitos priorizam velocidade e disponibilidade.

Em resumo, o NoSQL é ideal para cenários em que há grande volume de dados, necessidade de escalabilidade e flexibilidade. Bancos relacionais continuam sendo mais adequados quando é preciso garantir consistência rígida e trabalhar com relações complexas entre tabelas. Assim, a escolha entre SQL e NoSQL depende do tipo de aplicação e das necessidades do projeto.

                                    Categorias NoSQL
- Orientado a Documentos
Os bancos de dados orientados a documentos armazenam informações em documentos, geralmente no formato JSON ou BSON. Cada documento contém dados estruturados de forma flexível, como se fosse um “pacote” com campos e valores. Esse modelo é muito usado em aplicações web modernas, pois permite guardar dados complexos sem precisar de tabelas fixas. Um exemplo famoso é o MongoDB.
   → Armazena dados em documentos (JSON, BSON).
   → Flexível, sem esquema fixo.
   → Ideal para aplicações web modernas.
   → Exemplo: MongoDB.

- Chave-Valor
os bancos de chave-valor são os mais simples: cada dado é armazenado como um par formado por uma chave única e um valor associado. Esse modelo é extremamente rápido e eficiente para buscas diretas, sendo muito utilizado em cache, sessões de usuário e sistemas que exigem alta performance. Redis e DynamoDB são exemplos comuns.
→ Estrutura simples: chave única + valor associado.
→ Extremamente rápido e eficiente.
→ Usado em cache, sessões de usuário, alta performance.
→ Exemplo: Redis, DynamoDB.

- Família de Colunas
Na família de colunas, os dados são organizados em colunas em vez de linhas, o que facilita consultas em grandes volumes de informação. Esse tipo é muito usado em aplicações de análise de dados e big data, pois permite ler e processar rapidamente conjuntos enormes de registros. Exemplos incluem Cassandra e HBase.
   → Dados organizados em colunas em vez de linhas.
   → Excelente para grandes volumes e análises.
   → Muito usado em big data.
   → Exemplo: Cassandra, HBase.

- Orientado a Grafos
Já os bancos orientados a grafos são focados em representar relações entre dados. Eles trabalham com nós (entidades) e arestas (conexões), sendo ideais para sistemas que precisam analisar redes de relacionamento, como redes sociais, recomendações ou mapas de rotas. O Neo4j é um dos principais representantes desse modelo.
   → Focado em relações entre dados.
   → Usa nós (entidades) e arestas (conexões).
   → Ótimo para redes sociais, recomendações, rotas.
   → Exemplo: Neo4j.


                                          Comandos Mongodb
test> use cruddb;
switched to db cruddb
cruddb> show collections;

cruddb> db.createCollection('users'); #Criar Usuario
{ ok: 1 }
cruddb> show collections;
users
cruddb> db.users.insertOne({name:"Fulano", email:"fulano@email.com", phone:"23214"});  #inserir dados
{
  acknowledged: true,
  insertedId: ObjectId('69b82cce5d079cec557c2907')
}
cruddb> db.users.insertOne({name:"Carla", email:"carlinha@email.com", phone:"16544"}); #inserir dados
{
  acknowledged: true,
  insertedId: ObjectId('69b82d055d079cec557c2908')
}
cruddb> db.users.find({}); #retornar todos os dados
[
  {
    _id: ObjectId('69b82cce5d079cec557c2907'),
    name: 'Fulano',
    email: 'fulano@email.com',
    phone: '23214'
  },
  {
    _id: ObjectId('69b82d055d079cec557c2908'),
    name: 'Carla',
    email: 'carlinha@email.com',
    phone: '16544'
  }
]
cruddb> db.users.find({name:"Carla"}); #retornar dado específico
[
  {
    _id: ObjectId('69b82d055d079cec557c2908'),
    name: 'Carla',
    email: 'carlinha@email.com',
    phone: '16544'
  }
]
cruddb> db.users.deleteOne({name:"Fulano"}); #deletar dados
{ acknowledged: true, deletedCount: 1 }

cruddb> db.users.find({}); #retornar todos os dados (aqui só um pois o outro foi excluído)
[
  {
    _id: ObjectId('69b82d055d079cec557c2908'),
    name: 'Carla',
    email: 'carlinha@email.com',
    phone: '16544'
  }
]