ALTER TABLE pessoa ADD email VARCHAR(90) NOT NULL AFTER nome;
ALTER TABLE pessoa DROP email;

ALTER TABLE telefone ADD operadora_telefone VARCHAR(6) NOT NULL AFTER num_telefone;
ALTER TABLE telefone CHANGE operadora_telefone operadora VARCHAR(6) NOT NULL;

ALTER TABLE funcionario ADD sobrenome VARCHAR(20) NOT NULL AFTER salario;
ALTER TABLE funcionario DROP sobrenome;

ALTER TABLE cidade modify column nome varchar(30);
ALTER TABLE cidade change column nome nome_cidade varchar(30);

UPDATE endereco SET numero=(666) WHERE id=3;
UPDATE endereco SET rua=('330') WHERE id=3;

UPDATE zelador SET bloco='B2' WHERE id=2;
UPDATE zelador SET bloco='B1' WHERE id =3;

UPDATE porteiro SET portao='P2' WHERE id=3;
UPDATE porteiro SET portao='P1' WHERE id=4;

ALTER TABLE achados CHANGE item coisas VARCHAR(20) NOT NULL;
ALTER TABLE achados CHANGE coisas objeto VARCHAR(20) NOT NULL;

UPDATE morador SET apartamento=901 WHERE id=4;
UPDATE morador SET bloco='B3' WHERE id=4;

ALTER TABLE ocorrencia ADD gravidade BIT(1) NULL AFTER descricao;
ALTER TABLE ocorrencia CHANGE gravidade ocorrencia_grave BIT(1) NULL;

ALTER TABLE salao ADD microondas BIT(1) NULL AFTER bloco;
ALTER TABLE salao DROP microondas;

UPDATE reserva SET data_reserva = (DATE'2020-10-30') WHERE id=4;
ALTER TABLE reserva change column data_reserva data_reservada DATE NOT NULL;