Crie um banco de dados usando SQL para um sistema hospitalar para controle de pacientes e consultas. Serão 5 tabelas, para pacientes, consultas, médicos, especialidades e tratamentos. que deverão ser criadas seguindo os seguintes requisitos de relacionamento:

Os pacientes devem possuir nome completo, data de nascimento, gênero, telefone e endereço.
Os médicos devem possuir nome completo, telefone e também uma especialização (da tabela de especializações).
As especializações só precisam de um nome/título, e podem ser usadas para múltiplos médicos (ex.: a linha “Cardiologia” pode ser a especialização de 3 médicos simultaneamente)
As consultas são intermediárias entre pacientes e médicos, onde um paciente pode se consultar com vários médicos diferentes e um médico pode atender vários pacientes. As consultas também precisam possuir as informações: data de quando foi realizada, observações e tipo de atendimento (ex.: plano de saúde ou particular)
Por fim, os tratamentos só podem ser criados para uma consulta específica, porém uma mesma consulta pode ter mais de um tratamento associado a ela. O tratamento deve possuir informações sobre os medicamentos a serem usados e uma descrição do tratamento em si.
Além das tabelas, crie também as seguintes consultas SQL:

Obter todos os pacientes juntamente com suas consultas e os médicos que os atenderam.
Obter todas as consultas de um determinado médico, incluindo informações dos pacientes e observações.
Obter uma lista de todos os tratamentos prescritos em consultas, incluindo informações dos médicos e pacientes.
Obter todos os médicos com suas respectivas especializações.
Obter todas as consultas realizadas em uma data específica, incluindo informações de pacientes e médicos.
Obter uma lista de todos os pacientes que foram atendidos por médicos de uma determinada especialização.
Obter todos os tratamentos em andamento de um determinado paciente.


VAMOS SEPARAR O PROBLEMA POR PARTES PARA FACILITAR A RESOLUÇÃO 

Serão 5 tabelas:
PACIENTES: devem possuir nome completo, data de nascimento, gênero, telefone e endereço 
 #TENTATIVA 1
 CREATE TABLE patients(
id SERIAL PRIMARY KEY,
name VARCHAR(300) NOT NULL,
date_birthday VARCHAR(11),
gender VARCHAR(50),
phone VARCHAR UNIQUE NOT NULL,
address VARCHAR (300)
);

MÉDICOS: devem possuir nome completo, telefone e também uma especialização (da tabela de especializações).
#TENTATIVA 1
CREATE TABLE doctors(
id SERIAL PRIMARY KEY,
name VARCHAR(300) NOT NULL,
phone VARCHAR UNIQUE NOT NULL,
fk_specialty
FOREIGN KEY (fk_specialty) REFERENCES specialties(id)
);

 CONSULTAS: são intermediárias entre pacientes e médicos, onde um paciente pode se consultar com vários médicos diferentes e um médico pode atender vários pacientes. As consultas também precisam possuir as informações: data de quando foi realizada, observações e tipo de atendimento (ex.: plano de saúde ou particular)
 #TENTATIVA 1
 CREATE TABLE consultations(
patient_id INT,
doctor_id INT,
PRIMARY KEY(patient_id, doctor_id),
FOREIGN KEY(patient_id) REFERENCES patients (id),
FOREIGN KEY (doctor_id) REFERENCES doctors (id),
date VARCHAR(11) NOT NULL,
observations VARCHAR(300),
type_of_service VARCHAR(50)
);
 
 ESPECIALIDADES: só precisam de um nome/título, e podem ser usadas para múltiplos médicos
(ex.: a linha “Cardiologia” pode ser a especialização de 3 médicos simultaneamente) 

#TENTATIVA 1
 CREATE TABLE specialties(
id SERIAL PRIMARY KEY,
title VARCHAR(200),

);
 
 TRATAMENTOS: só podem ser criados para uma consulta específica, porém uma mesma consulta pode ter mais de um tratamento associado a ela. O tratamento deve possuir informações sobre os medicamentos a serem usados e uma descrição do tratamento em si.