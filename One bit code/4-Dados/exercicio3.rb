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

#       ESPECIALIZAÇÕES - um para muitos-  o médico posssui uma esp. mas cada especialização pode estar em vários médicos
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

#       CONSULTAS - um pra muitos tanto no doctor quanto no patient fk composta
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


Além das tabelas, crie também as seguintes consultas SQL:
Obter todos os pacientes juntamente com suas consultas e os médicos que os atenderam.

=begin
Tentativa 1 
SELECT * FROM patients JOIN consultations ON patients.id = doctor_id;
Hospital=# SELECT * FROM patients JOIN consultations ON patients.id = doctor_id;
 id |   full_name    | date_of_birth |                       gender                       |   phone   |   address   | id | patient_id | doctor_id | consultation_date |           observations           |   service_type
----+----------------+---------------+----------------------------------------------------+-----------+-------------+----+------------+-----------+-------------------+----------------------------------+------------------
  1 | JosÚ da Silva  | 1980-01-01    | M                                                  | 111111111 | Rua A, 123  |  1 |          1 |         1 | 2024-06-01        | Paciente com dores no peito.     | Particular
  2 | Maria Pereira  | 1990-02-02    | F                                                  | 222222222 | Rua B, 456  |  2 |          2 |         2 | 2024-06-01        | Paciente com irritaþ§es na pele. | Particular
  3 | Carlos Alberto | 2000-03-03    | M                                                  | 333333333 | Rua C, 789  |  3 |          3 |         3 | 2024-06-01        | Paciente com dores de cabeþa.    | Plano de Sa·de B
  4 | Ana Paula      | 2010-04-04    | F                                                  | 444444444 | Rua D, 1011 |  4 |          4 |         4 | 2024-06-02        | Paciente com febre e tosse.      | Particular
  5 | Pedro Henrique | 1975-05-05    | M                                                  | 555555555 | Rua E, 1213 |  5 |          5 |         5 | 2024-06-02        | Paciente com dores nas costas.   | Particular
  3 | Carlos Alberto | 2000-03-03    | M                                                  | 333333333 | Rua C, 789  |  6 |          1 |         3 | 2024-06-02        | Paciente com tonturas.           | Plano de Sa·de A
  4 | Ana Paula      | 2010-04-04    | F                                                  | 444444444 | Rua D, 1011 |  7 |          2 |         4 | 2024-06-02        | Paciente com dor de garganta.    | Particular
  1 | JosÚ da Silva  | 1980-01-01    | M                                                  | 111111111 | Rua A, 123  |  8 |          3 |         1 | 2024-06-04        | Paciente com pressÒo alta.       | Particular
  2 | Maria Pereira  | 1990-02-02    | F                                                  | 222222222 | Rua B, 456  |  9 |          4 |         2 | 2024-06-05        | Paciente com alergias.           | Particular
  3 | Carlos Alberto | 2000-03-03    | M                                                  | 333333333 | Rua C, 789  | 10 |          5 |         3 | 2024-06-06        | Paciente com enxaqueca.          | Plano de Sa·de A
(10 linhas)
=end

RESOLUÇÃO 
SELECT
  patients.id AS patient_id,
  patients.full_name AS patient_name,
  consultations.id AS consultation_id,
  consultations.consultation_date,
  doctors.id AS doctor_id,
  doctors.full_name AS doctor_name
FROM
	patients
JOIN
	consultations ON patients.id = consultations.patient_id
JOIN
	doctors ON doctors.id = consultations.doctor_id;
=begin
 patient_id |  patient_name  | consultation_id | consultation_date | doctor_id |     doctor_name
------------+----------------+-----------------+-------------------+-----------+---------------------
          1 | JosÚ da Silva  |               1 | 2024-06-01        |         1 | Dr. JoÒo Silva
          2 | Maria Pereira  |               2 | 2024-06-01        |         2 | Dr. Maria Souza
          3 | Carlos Alberto |               3 | 2024-06-01        |         3 | Dr. Carlos Oliveira
          4 | Ana Paula      |               4 | 2024-06-02        |         4 | Dr. Ana Lima
          5 | Pedro Henrique |               5 | 2024-06-02        |         5 | Dr. Pedro Santos
          1 | JosÚ da Silva  |               6 | 2024-06-02        |         3 | Dr. Carlos Oliveira
          2 | Maria Pereira  |               7 | 2024-06-02        |         4 | Dr. Ana Lima
          3 | Carlos Alberto |               8 | 2024-06-04        |         1 | Dr. JoÒo Silva
          4 | Ana Paula      |               9 | 2024-06-05        |         2 | Dr. Maria Souza
          5 | Pedro Henrique |              10 | 2024-06-06        |         3 | Dr. Carlos Oliveira
=end

Obter todas as consultas de um determinado médico, incluindo informações dos pacientes e observações.
Busca pelo nome
SELECT 
doctors.id AS doctor_id,
doctors.full_name AS doctor_name,
consultations.id AS consultation_id,
consultations.consultation_date,
consultations.observations,
patients.id AS patient_id,
patients.full_name AS patient_name
FROM 
doctors
JOIN
consultations ON doctors.id = consultations.doctor_id
JOIN
patients ON consultations.patient_id = patients.id
WHERE 
doctors.full_name = 'Dr. João Silva';

 Busca pelo id            
SELECT 
doctors.id AS doctor_id,
doctors.full_name AS doctor_name,
consultations.id AS consultation_id,
consultations.consultation_date,
consultations.observations,
patients.id AS patient_id,
patients.full_name AS patient_name
FROM 
doctors
JOIN
consultations ON doctors.id = consultations.doctor_id
JOIN
patients ON consultations.patient_id = patients.id
WHERE 
doctors.id = 1; 
=begin
 doctor_id |  doctor_name   | consultation_id | consultation_date |         observations         | patient_id |  patient_name
-----------+----------------+-----------------+-------------------+------------------------------+------------+----------------
         1 | Dr. JoÒo Silva |               1 | 2024-06-01        | Paciente com dores no peito. |          1 | JosÚ da Silva
         1 | Dr. JoÒo Silva |               8 | 2024-06-04        | Paciente com pressÒo alta.   |          3 | Carlos Alberto
(2 linhas)
=end

Obter uma lista de todos os tratamentos prescritos em consultas, incluindo informações dos médicos e pacientes.


Obter todos os médicos com suas respectivas especializações.

Obter todas as consultas realizadas em uma data específica, incluindo informações de pacientes e médicos.


Obter uma lista de todos os pacientes que foram atendidos por médicos de uma determinada especialização.


Obter todos os tratamentos em andamento de um determinado paciente.

SELECT
	patients.id AS patient_id, 
	patients.full_name AS patient_full_name, 
	doctors.full_name AS doctor_full_name, 
	specializations.specialization_name
FROM
	patients
JOIN
	consultations ON patients.id = consultations.patient_id
JOIN
	doctors ON doctors.id = consultations.doctor_id
JOIN
	specializations ON doctors.specialization_id = specializations.id
WHERE
	specializations.specialization_name = 'Cardiologia';

=begin
 patient_id | patient_full_name | doctor_full_name | specialization_name
------------+-------------------+------------------+---------------------
          1 | JosÚ da Silva     | Dr. JoÒo Silva   | Cardiologia
          3 | Carlos Alberto    | Dr. JoÒo Silva   | Cardiologia
(2 linhas)
=end