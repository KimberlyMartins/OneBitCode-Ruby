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
                                 PACIENTES:
 devem possuir nome completo, data de nascimento, gênero, telefone e endereço 
 #TENTATIVA 1
CREATE TABLE patients(
id SERIAL PRIMARY KEY,
name VARCHAR(300) NOT NULL, #nome completo = full_name
date_birthday VARCHAR(11), #formato date
gender VARCHAR(50),
phone VARCHAR UNIQUE NOT NULL, #faltou especificar varchar
address VARCHAR (300)
);

#TENTATIVA 2 
CREATE TABLE IF NOT EXISTS patients(
id SERIAL PRIMARY KEY,
full_name VARCHAR(300) NOT NULL, 
date_birthday DATE, 
gender VARCHAR(50),
phone VARCHAR(15) UNIQUE,
address VARCHAR (300)
);

RESOLUÇÃO:
CREATE TABLE IF NOT EXISTS patients (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL, #não pode estar vazio
    date_of_birth DATE,
    gender CHAR(50),
    phone VARCHAR(20),
    address VARCHAR(255)
);
                                 MÉDICOS:
devem possuir nome completo, telefone e também uma especialização (da tabela de especializações).
#TENTATIVA 1
CREATE TABLE doctors(
id SERIAL PRIMARY KEY,
name VARCHAR(300) NOT NULL, #full name
phone VARCHAR UNIQUE NOT NULL, #faltou especificar varchar 
fk_specialty #faltou especificar tipo da chave
FOREIGN KEY (fk_specialty) REFERENCES specialties(id)
);

#TENTATIVA 2 
CREATE TABLE doctors(
id SERIAL PRIMARY KEY,
full_name VARCHAR(300) NOT NULL, 
phone VARCHAR(15) UNIQUE NOT NULL,
fk_specialty INT,
FOREIGN KEY (fk_specialty) REFERENCES specialties(id)
);

RESOLUÇÃO:
CREATE TABLE IF NOT EXISTS doctors (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL, #não pode estar vazio
    phone VARCHAR(15),
    specialization_id INT,
    FOREIGN KEY (specialization_id) REFERENCES specializations(id)
);

                                CONSULTAS: 
são intermediárias entre pacientes e médicos, onde um paciente pode se consultar com vários médicos diferentes e um médico pode atender vários pacientes. As consultas também precisam possuir as informações: data de quando foi realizada, observações e tipo de atendimento (ex.: plano de saúde ou particular)
 #TENTATIVA 1
 CREATE TABLE consultations( #sem criar a coluna id o mesmo paciente não consegue se consultar de novo com o medico
patient_id INT,
doctor_id INT,
PRIMARY KEY(patient_id, doctor_id),
FOREIGN KEY(patient_id) REFERENCES patients (id), #colocar as chaves por ultimo
FOREIGN KEY (doctor_id) REFERENCES doctors (id), #colocar as chaves por ultimo
date VARCHAR(11) NOT NULL, #formato date
observations VARCHAR(300), #varchar ou text
type_of_service VARCHAR(50)
);
 
#TENTATIVA 2
CREATE TABLE consultations(
id SERIAL PRIMARY KEY,
patient_id INT,
doctor_id INT,
date DATE NOT NULL,
observations VARCHAR(300),
type_of_service VARCHAR(50),
PRIMARY KEY(patient_id, doctor_id),
FOREIGN KEY(patient_id) REFERENCES patients (id), 
FOREIGN KEY (doctor_id) REFERENCES doctors (id)
);

RESOLUÇÃO:
CREATE TABLE IF NOT EXISTS consultations (
    id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,        #NOT NULL pois não existe consulta sem paciente
    doctor_id INT NOT NULL,         #NOT NULL pois não existe consulta sem médico
    consultation_date DATE,
    observations VARCHAR(255),
    service_type VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

                                ESPECIALIDADES: 
só precisam de um nome/título, e podem ser usadas para múltiplos médicos (ex.: a linha“Cardiologia” pode ser a especialização de 3 médicos simultaneamente) 

#TENTATIVA 1
 CREATE TABLE specialties(
id SERIAL PRIMARY KEY,
title VARCHAR(200),
                        #está correta, não precisava de mais nada talvez só varchar para text
);

#TENTATIVA 2
 CREATE TABLE specialties(
id SERIAL PRIMARY KEY,
title VARCHAR(200),
);

RESOLUÇÃO:
CREATE TABLE specializations (
    id SERIAL PRIMARY KEY,
    specialization_name VARCHAR(100)
);

                                 TRATAMENTOS: 
só podem ser criados para uma consulta específica, porém uma mesma consulta pode ter mais de um tratamento associado a ela. O tratamento deve possuir informações sobre os medicamentos a serem usados e uma descrição do tratamento em si.
#TENTATIVA 1
CREATE TABLE IF NOT EXISTS treatments(
id SERIAL PRIMARY KEY,
fk_treatments INT, #faltou not null
FOREIGN KEY (fk_treatments) REFERENCES (consultations_id) #id entre parênteses
); #faltou descrever medicação e tratamentos

#TENTATIVA 2
CREATE TABLE IF NOT EXISTS treatments(
id SERIAL PRIMARY KEY,
fk_treatments INT NOT NULL,
medication VARCHAR(300),
description TEXT,
FOREIGN KEY (fk_treatments) REFERENCES consultations(id)
);

RESOLUÇÃO:
CREATE TABLE Treatments (
    id SERIAL PRIMARY KEY,           # Alterou o nome da fk mas serve a mesma lógica
    consultation_id INT NOT NULL,    # NOT NULL pois não tem tratamento sem a consulta
    medications VARCHAR(255),
    treatment_description TEXT,
    FOREIGN KEY (consultation_id) REFERENCES consultations(id)
);


                                   #RESOLUÇÃO  DETALHADA
Criar as tabelas mais independentes primeiro pois quando tiver chave estrangeira, a tabela referenciada já precisa existir!!!

#       PACIENTES
CREATE TABLE IF NOT EXISTS patients (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL, #não pode estar vazio
    date_of_birth DATE,
    gender CHAR(50),
    phone VARCHAR(20),
    address VARCHAR(255)
);

#       ESPECIALIZAÇÕES - 
CREATE TABLE IF NOT EXISTS specializations (
    id SERIAL PRIMARY KEY,
    specialization_name VARCHAR(100)
);

#       MÉDICOS - um para muitos
CREATE TABLE IF NOT EXISTS doctors (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL, #não pode estar vazio
    phone VARCHAR(15),
    specialization_id INT,
    FOREIGN KEY (specialization_id) REFERENCES specializations(id)
);

#       CONSULTAS - um pra muitos 
CREATE TABLE IF NOT EXISTS consultations (
    id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,        #NOT NULL pois não existe consulta sem paciente
    doctor_id INT NOT NULL,         #NOT NULL pois não existe consulta sem médico
    consultation_date DATE,
    observations VARCHAR(255),
    service_type VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

#       TRATAMENTOS - um pra muitos
CREATE TABLE IF NOT EXISTS treatments (
    id SERIAL PRIMARY KEY,           # Alterou o nome da fk mas serve a mesma lógica
    consultation_id INT NOT NULL,    # NOT NULL pois não tem tratamento sem a consulta
    medications VARCHAR(255),
    treatment_description TEXT,
    FOREIGN KEY (consultation_id) REFERENCES consultations(id)
);
