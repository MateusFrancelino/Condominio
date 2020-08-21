SELECT nome, cpf FROM pessoa order by nome;
SELECT id, descricao FROM salao;
SELECT portao FROM porteiro;
SELECT bairro FROM endereco;
SELECT descricao FROM ocorrencia;

SELECT*
FROM reserva as R
JOIN  morador as M on R.id_morador = M.id;

SELECT*
FROM funcionario as F
JOIN pessoa as P on F.id_pessoa = P.id;

SELECT*
FROM achados as A
JOIN zelador as Z on A.id_zelador = Z.id;

SELECT*
FROM morador as M
JOIN pessoa as P on M.id_pessoa = P.id;

SELECT T.num_telefone
FROM telefone as T
JOIN  funcionario as F on T.id_pessoa = F.id_pessoa;