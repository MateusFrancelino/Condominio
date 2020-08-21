insert into pessoa values 
	(DEFAULT, 'Maria Gadu', '038.717.330-52', '7171208'), 
    (DEFAULT, 'Mario Antonio', '078.456.600-98', '8190876'), 
    (DEFAULT, 'Seu José Carlos', '909.670.890.8', '3458290'), 
    (DEFAULT, 'Mateus Francelino', '103.819.669-84', '5757208'), 
    (DEFAULT, 'Dona Maria', '968.655.254-78', '1029308'),
	(DEFAULT, 'Shirley Branda', '199.666.689-48', '2321245'), 
    (DEFAULT, 'Peter Parker', '139.950.123-99', '3344556'), 
    (DEFAULT, 'Robervandro', '231.533.531-66', '5454208');
    
insert into telefone values
	(DEFAULT,(SELECT id FROM pessoa WHERE nome='Maria Gadu'), '47998743621'),
	(DEFAULT,(SELECT id FROM pessoa WHERE nome='Maria Gadu'), '4733457691'),
	(DEFAULT,(SELECT id FROM pessoa WHERE nome='Mario Antonio'), '47985674127'),
	(DEFAULT,(SELECT id FROM pessoa WHERE nome='Seu José Carlos'), '48996943478'),
	(DEFAULT,(SELECT id FROM pessoa WHERE nome='Mateus Francelino'), '47991515293');

insert into cidade values
	(DEFAULT, 'Itapema', 'SC'),
    (DEFAULT, 'Santa Cruz do Sul', 'SC'),
    (DEFAULT, 'São José', 'SC'),
    (DEFAULT, 'Porto Alegre', 'RS'),
    (DEFAULT, 'Curitiba', 'PR');
    
insert into endereco values
	(DEFAULT, (SELECT id FROM cidade WHERE nome='Itapema' and estado='SC'), 'Vila', '266', 669),
    (DEFAULT, (SELECT id FROM cidade WHERE nome='Santa Cruz do Sul' and estado='SC'), 'Santo Inácio', 'Oscar Jost', 669),
    (DEFAULT, (SELECT id FROM cidade WHERE nome='São José' and estado='SC'),'Verena', 'Getúlio Vargas',709),
    (DEFAULT, (SELECT id FROM cidade WHERE nome='Itapema' and estado='SC'),'Vila', '155',710), 
    (DEFAULT, (SELECT id FROM cidade WHERE nome='Itapema' and estado='SC'),'Morretes', '369',696);

insert into funcionario values
	(DEFAULT, (SELECT id FROM pessoa WHERE nome='Seu José Carlos'), (SELECT id FROM endereco WHERE id=1), 500),
	(DEFAULT, (SELECT id FROM pessoa WHERE nome='Dona Maria'), (SELECT id FROM endereco WHERE id=2), 1500),
	(DEFAULT, (SELECT id FROM pessoa WHERE nome='Mateus Francelino'), (SELECT id FROM endereco WHERE id=3), 3000),
	(DEFAULT, (SELECT id FROM pessoa WHERE nome='Maria Gadu'), (SELECT id FROM endereco WHERE id=4), 1600),
	(DEFAULT, (SELECT id FROM pessoa WHERE nome='Mario Antonio'), (SELECT id FROM endereco WHERE id=5), 1300);

insert into zelador values
	(DEFAULT, (SELECT id FROM funcionario WHERE id=1),'B1'),
	(DEFAULT, (SELECT id FROM funcionario WHERE id=2),'B1'),
	(DEFAULT, (SELECT id FROM funcionario WHERE id=3),'B2'),
	(DEFAULT, (SELECT id FROM funcionario WHERE id=4),'B2'),
	(DEFAULT, (SELECT id FROM funcionario WHERE id=5),'B1');

insert into porteiro values
	(DEFAULT, (SELECT id FROM funcionario WHERE id=3),'P1'),
	(DEFAULT,(SELECT id FROM funcionario WHERE id=3),'P3'),
	(DEFAULT,(SELECT id FROM funcionario WHERE id=1),'P1'),
	(DEFAULT,(SELECT id FROM funcionario WHERE id=4),'P3'),
	(DEFAULT,(SELECT id FROM funcionario WHERE id=5),'P1');

insert into achados values
	(DEFAULT, (SELECT id FROM zelador WHERE id=1),'bone','preto com caveira'),
	(DEFAULT, (SELECT id FROM zelador WHERE id=2),'chaveiro','Ferrari'),
	(DEFAULT, (SELECT id FROM zelador WHERE id=3),'calca','preta'),
	(DEFAULT, (SELECT id FROM zelador WHERE id=4),'boneco','naruto'),
	(DEFAULT, (SELECT id FROM zelador WHERE id=5),'moletom','azul');

insert into morador values
	(DEFAULT,(SELECT id FROM pessoa WHERE nome='Maria Gadu'),'B1',201,False,True),
    (DEFAULT,(SELECT id FROM pessoa WHERE nome='Mario Antonio'),'B2',302,True,False),
    (DEFAULT,(SELECT id FROM pessoa WHERE nome='Seu José Carlos'),'B1',202,False,False),
    (DEFAULT,(SELECT id FROM pessoa WHERE nome='Mateus Francelino'),'B2',502,False,False),
    (DEFAULT,(SELECT id FROM pessoa WHERE nome='Dona Maria'),'B1',401,False,False);

insert into ocorrencia values
	(DEFAULT, (SELECT id FROM morador WHERE id=1),'Quebrou porta corta fogo'),
	(DEFAULT,(SELECT id FROM morador WHERE id=2),'Pendurou roupas na sacada'),
	(DEFAULT, (SELECT id FROM morador WHERE id=3),'Quebrou vaso de flor'),
	(DEFAULT, (SELECT id FROM morador WHERE id=4),'Sujou hall de entrada'),
	(DEFAULT,(SELECT id FROM morador WHERE id=5),'Deixou a porta da garagem aberta');
    
insert into salao values
	(DEFAULT, 'B1', 'Desligar luzes ao final', 'Area de festa com piscina', 150),
	(DEFAULT, 'B2', 'Guardar os itens usados ao final', 'Sala de jogos', 0),
	(DEFAULT, 'B2', 'Nao tocar musica alta', 'sala de tv',0),
	(DEFAULT, 'B1', 'Limpar equipamentos', 'Academia',0),
	(DEFAULT, 'B1', 'Não quebrar nada', 'Salão de festas chiques', 1600);

insert into reserva values
	(DEFAULT,(SELECT id FROM morador WHERE id=1),(SELECT id FROM salao WHERE descricao='Area de festa com piscina'), (DATE'2020-09-08')),
    (DEFAULT,(SELECT id FROM morador WHERE id=2),(SELECT id FROM salao WHERE descricao='Sala de jogos'), (DATE'2020-12-23')),
    (DEFAULT,(SELECT id FROM morador WHERE id=4),(SELECT id FROM salao WHERE descricao='sala de tv'), (DATE'2020-11-01')),
    (DEFAULT,(SELECT id FROM morador WHERE id=4),(SELECT id FROM salao WHERE descricao='Sala de jogos'), (DATE'2020-11-02')),
    (DEFAULT,(SELECT id FROM morador WHERE id=4),(SELECT id FROM salao WHERE descricao='Area de festa com piscina'), (DATE'2020-11-03'));

drop table ocorrencia;