Vamos criar uma modelagem de banco de dados usando as seguintes descrições:

“Nossa empresa atua com serviços gerais de informática para pequenas e médias empresas, como manutenção de computadores, redes e impressoras, tanto em modelo help-desk quanto em service-desk. Sabendo disso, precisamos de um sistema automatizado que atue no gerenciamento dos chamados de atendimento técnico.

Esse sistema deverá permitir que um chamado de atendimento seja aberto pelos nossos clientes, onde eles informarão qual é o problema e escolherão a categoria do atendimento, que pode ser problema de hardware, instalação ou configuração, suíte office, impressora, rede e outros. O chamado também precisa possuir um campo de “situação”, onde o cliente pode acompanhar o andamento e nossa equipe técnica pode ir atualizando conforme o andamento do atendimento.

Outra funcionalidade importante é a de mensagens/comentários nos chamados. A equipe técnica e o cliente devem ser capazes de anexar mensagens no chamado, informando um ao outro sobre atualizações ou observações mais detalhadas do atendimento.

Nesse sistema também queremos ter um perfil individual para cada funcionário da equipe técnica, para que ele possa ser identificado e responder diretamente aos chamados. Também precisamos que nossos clientes possuam seu próprio cadastro, assim os chamados podem ser consultados por cliente ou por responsável da equipe técnica, a fim de metrificar o desempenho de nossa equipe.”

Vamos separar por partes para serem moldadas:

Entidades

Chamados (tickets)
descrição
categoria
situação
data e hora de abertura (created_at)
data de última atualização (updated_at)
cliente que abriu
técnico que respondeu

Clientes (empresas)
cnpj
nome
usuário
senha

Funcionários da equipe técnica
nome
usuário
senha

Mensagens
conteúdo
data e hora de envio
remetente
chamado

Primeiramente  montamos a modelagem no draw io, e seguimos com o código depois de ter a visão mais ampla das tabelas
a serem criadas.

CREATE TABLE IF NOT EXISTS users(
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
username VARCHAR(255) NOT NULL UNIQUE,
password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS clients(
id serial PRIMARY KEY,
CNPJ VARCHAR(32) NOT NULL,
user_id INT NOT NULL,                             #forma completa de referenciar a chave
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS technicians(
id serial PRIMARY KEY,
user_id INT NOT NULL REFERENCES users(id)         #forma abreviada de referenciar a chave 
);