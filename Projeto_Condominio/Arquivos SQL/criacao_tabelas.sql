CREATE DATABASE condominio;

CREATE TABLE pessoa (
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    rg VARCHAR(7) NOT NULL
);

CREATE TABLE telefone(
    id INT(6) NOT NULL auto_increment PRIMARY KEY,
    id_pessoa INT(6) NOT NULL,
    num_telefone VARCHAR(15) NOT NULL,
    CONSTRAINT fk_telefone_pessoa foreign key(id_pessoa) REFERENCES pessoa(id)
);

CREATE TABLE cidade(
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    estado VARCHAR(2) NOT NULL
);

CREATE TABLE endereco(
  id INT(6) NOT NULL auto_increment PRIMARY KEY,
  id_cidade INT(6) NOT NULL,
  bairro VARCHAR(25) NOT NULL,
  rua VARCHAR(25) NOT NULL,
  numero INT(6) NOT NULL,
  CONSTRAINT fk_endereco_cidade foreign key(id_cidade) REFERENCES cidade(id)
);

CREATE TABLE funcionario(
   id INT(6) NOT NULL auto_increment PRIMARY KEY,
   id_pessoa INT(6) NOT NULL,
   id_endereco INT(6) NOT NULL,
   salario DECIMAL(6),
   CONSTRAINT fk_funcionario_pessoa foreign key (id_pessoa) REFERENCES pessoa(id),
   CONSTRAINT fk_funcionario_endereco foreign key (id_endereco) REFERENCES endereco(id)
);

CREATE TABLE zelador (
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
    id_funcionario INT(6) NOT NULL,
	CONSTRAINT fk_zelador_funcionario foreign key (id_funcionario) REFERENCES funcionario(id),
	bloco VARCHAR(2)
);

CREATE TABLE porteiro (
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
	id_funcionario INT(6) NOT NULL,
	CONSTRAINT fk_porteiro_funcionario foreign key (id_funcionario) REFERENCES funcionario(id),
	portao VARCHAR(2) NOT NULL
);

CREATE TABLE achados (
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
	id_zelador INT(6) NOT NULL,
	CONSTRAINT fk_achados_zelador foreign key (id_zelador) REFERENCES zelador(id),
	item VARCHAR(20),
	descricao VARCHAR(100)
);

CREATE TABLE morador(
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
	id_pessoa INT(6) NOT NULL,
	CONSTRAINT fk_morado_pessoa foreign key (id_pessoa) REFERENCES pessoa(id),
    bloco VARCHAR(2) NOT NULL,
	apartamento INT(3) NOT NULL,
	sindico BIT(1),
	subsindico BIT(1)
);

CREATE TABLE ocorrencia(
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
	id_morador INT(6) NOT NULL,
	CONSTRAINT fk_ocorrencia_morador foreign key (id_morador) REFERENCES morador(id),
	descricao VARCHAR(255)
);

CREATE TABLE salao(
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
	bloco VARCHAR(2),
	orientacoes VARCHAR(255),
	descricao VARCHAR(255),
	valor_adicional DECIMAL(5)
);

CREATE TABLE reserva (
	id INT(6) NOT NULL auto_increment PRIMARY KEY,
	id_salao INT(6) NOT NULL,
	id_morador INT(6) NOT NULL,
	CONSTRAINT fk_reserva_morador foreign key (id_morador) REFERENCES morador(id),
	CONSTRAINT fk_reserva_salao foreign key (id_salao) REFERENCES salao(id),
	data_reserva DATE NOT NULL
);



