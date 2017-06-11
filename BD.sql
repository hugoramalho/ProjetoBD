CREATE TABLE PESSOAS
(
	ID INT,
	NOME VARCHAR(150),
    PRIMARY KEY(ID)
);

CREATE TABLE ALUNO
( 
    MATRICULA INT,
    FK_PESSOAS INT,
    PRIMARY KEY(MATRICULA),
    FOREIGN KEY(FK_PESSOAS)
	REFERENCES PESSOAS(ID)
);
CREATE TABLE TIPO_DOCUMENTOS
(
    ID INT,
    TIPO_DOCUMENTOS VARCHAR(50),
    PRIMARY KEY(ID)
);
CREATE TABLE DOCUMENTOS 
(
    ID INT,
	NUMERO_DOCUMENTO VARCHAR(50),
	FK_TIPO_DOCUMENTOS INT,
	FK_PESSOAS INT,
    PRIMARY KEY(ID),
	FOREIGN KEY(FK_TIPO_DOCUMENTOS)
    REFERENCES TIPO_DOCUMENTOS(ID),
	FOREIGN KEY(FK_PESSOAS)
    REFERENCES PESSOAS(ID)

);

CREATE TABLE DATA_NASCIMENTO 
(
	ID INT,
	DATA_NASCIMENTO DATE,
	FK_PESSOAS INT,
    PRIMARY KEY(ID),
	FOREIGN KEY(FK_PESSOAS)
    REFERENCES PESSOAS(ID)
);
CREATE TABLE CONTATOS
(
	ID INT,
	DESCRICAO_CONTATO VARCHAR(60),
    PRIMARY KEY(ID)
);
CREATE TABLE TIPO_CONTATO
(
	ID INT,
	DESCRICAO VARCHAR(60),
    PRIMARY KEY(ID)
);


CREATE TABLE VINCULO_EMPREGATICIO
(
	ID INT,
	SITUACAO BOOLEAN,
    PRIMARY KEY(ID)
);

CREATE TABLE RENDA_FAMILIAR
(
	FK_PESSOAS INT,
	FK_VINCULO_EMPREGATICIO INT,
	RENDA_MENSAL MONEY,
    PRIMARY KEY(FK_PESSOAS),
	FOREIGN KEY(FK_PESSOAS)
    REFERENCES PESSOAS(ID),
    FOREIGN KEY(FK_VINCULO_EMPREGATICIO)
    REFERENCES VINCULO_EMPREGATICIO(ID)

);

CREATE TABLE QUADRO_FAMILIAR
(
	ID INT,
	FK_PESSOAS_ALUNO INT,
	FK_PESSOAS_FAMILIARES INT,
	GRAU_PARENTESCO VARCHAR(70),
    PRIMARY KEY (ID),
	FOREIGN KEY(FK_PESSOAS_ALUNO)
    REFERENCES PESSOAS(ID),
	FOREIGN KEY(FK_PESSOAS_FAMILIARES)
    REFERENCES PESSOAS(ID)
);

CREATE TABLE ESTADO
(
	ID INT,
	ESTADO VARCHAR(200),
    PRIMARY KEY(ID)
);
CREATE TABLE CIDADE
(
	ID INT,
	NOME VARCHAR(200),
	FK_ESTADO INT,
    PRIMARY KEY(ID),
    FOREIGN KEY(FK_ESTADO)
    REFERENCES ESTADO(ID)
);
CREATE TABLE BAIRRO
(
	ID INT,
	NOME VARCHAR(200),
	FK_CIDADE INT,
    PRIMARY KEY(ID),
    FOREIGN KEY(FK_CIDADE)
    REFERENCES CIDADE(ID)
);
CREATE TABLE RUA 
(
	ID INT,
	NOME VARCHAR(200),
	FK_BAIRRO INT,
    PRIMARY KEY(ID),
    FOREIGN KEY(FK_BAIRRO)
    REFERENCES BAIRRO(ID)
);
CREATE TABLE AUXILIO
(
	ID INT,
	FK_MODALIDADE VARCHAR(20),
	FK_ALUNO INT,
    PRIMARY KEY(ID),
	FOREIGN KEY(FK_ALUNO)
    REFERENCES ALUNO(MATRICULA)
);
CREATE TABLE TIPO_AUXILIO
(
	ID INT,
	TIPO VARCHAR(20),
    PRIMARY KEY(ID)
);
CREATE TABLE MODALIDADE_AUXILIOS
(
	ID INT,
	TIPO VARCHAR(20),
	DESCRICAO VARCHAR(200),
	FK_TIPO_AUXILIO INT,
    PRIMARY KEY(ID),
	FOREIGN KEY(FK_TIPO_AUXILIO)
    REFERENCES TIPO_AUXILIO(ID)
);
CREATE TABLE DOCUMENTOS_COMPROBATORIOS
(
	MATRICULA VARCHAR(20),
	DOCUMENTACAO VARCHAR(50),
    PRIMARY KEY(MATRICULA)
);

CREATE TABLE ATIVIDADES
(
	ID INT,
	TIPO_DE_ATIVIDADE VARCHAR(50),
    PRIMARY KEY(ID)
);
CREATE TABLE HORARIO
(
	ID INT,
	HORAS TIME,
    PRIMARY KEY(ID)
);
CREATE TABLE DETALHAMENTO_ATIVIDADE
(
	FK_ATIVIDADES INT,
	DESCRICAO_ATIVIDADE VARCHAR(150),
	FK_HORARIO_INI INT,
	FK_HORARIO_FIM INT,
    PRIMARY KEY(FK_ATIVIDADES),
	FOREIGN KEY(FK_ATIVIDADES)
    REFERENCES ATIVIDADES(ID),
	FOREIGN KEY(FK_HORARIO_INI)
    REFERENCES HORARIO(ID),
	FOREIGN KEY(FK_HORARIO_FIM)
    REFERENCES HORARIO(ID)
);
CREATE TABLE DIA_SEMANA
(
	ID INT,
	NOME VARCHAR(50),
    PRIMARY KEY(ID)
);
CREATE TABLE EVASAO_QUADRO_ATIVIDADES
(
    ID INT,
	FK_ALUNO INT,
	FK_DIA_SEMANA INT,
	FK_DETALHAMENTO_ATIVIDADE INT,
    PRIMARY KEY(ID),
	FOREIGN KEY(FK_ALUNO)
    REFERENCES ALUNO(MATRICULA),
	FOREIGN KEY(FK_DIA_SEMANA)
    REFERENCES DIA_SEMANA(ID),
	FOREIGN KEY(FK_DETALHAMENTO_ATIVIDADE)
    REFERENCES DETALHAMENTO_ATIVIDADE(FK_ATIVIDADES)
);


CREATE TABLE DISCIPLINAS
(
    ID INT,
    DISCIPLINA VARCHAR(50),
    PRIMARY KEY(ID)
);
CREATE TABLE DETALHAMENTO_DIFICULDADES
(
	ID INT,
	DESCRICAO VARCHAR(50),
    PRIMARY KEY(ID)
);
CREATE TABLE DIFICULDADES
(
    ID INT,
	FK_ALUNO INT,
	FK_DISCIPLINAS INT,
	FK_DETALHAMENTO_DIFICULDADES INT,
    PRIMARY KEY(ID),
	FOREIGN KEY(FK_ALUNO)
    REFERENCES ALUNO(MATRICULA),
	FOREIGN KEY(FK_DISCIPLINAS)
    REFERENCES DISCIPLINAS(ID),   
	FOREIGN KEY(FK_DETALHAMENTO_DIFICULDADES)
    REFERENCES DETALHAMENTO_DIFICULDADES(ID)
);


CREATE TABLE ALUNOS_INTERESSADOS_PARTICIPAR_ASSISTENCIA
(
	FK_ALUNO INT,
    PRIMARY KEY(FK_ALUNO),
    FOREIGN KEY(FK_ALUNO)
    REFERENCES ALUNO(MATRICULA)
);

CREATE TABLE ALUNOS_JA_PARTICIPANTES_ASSISTENCIA
(
	FK_ALUNO INT,
    PRIMARY KEY(FK_ALUNO),
    FOREIGN KEY(FK_ALUNO)
    REFERENCES ALUNO(MATRICULA)
);
CREATE TABLE ALUNOS_PENDENCIAS_DOCUMENTOS
(
	FK_ALUNO INT,
	FK_TIPO_DOCUMENTOS INT,
    PRIMARY KEY(FK_ALUNO),
    FOREIGN KEY(FK_ALUNO)
    REFERENCES ALUNO(MATRICULA),
    FOREIGN KEY(FK_TIPO_DOCUMENTOS)
    REFERENCES TIPO_DOCUMENTOS(ID)
);

INSERT INTO PESSOAS(ID,NOME)
VALUES	(1,'Josefa Vieira'),
		(2,'Gabriel Vieira'),
		(3,'Luca Vieira'),
		(4,'Josefina Vieira'),
		(5,'Jesus Vieira');
        
INSERT INTO ALUNO(MATRICULA,FK_PESSOAS)
VALUES	(20151001,1),
		(20151002,2),
		(20151003,3),
		(20151004,4),
		(20151005,5);

		
INSERT INTO TIPO_DOCUMENTOS(ID,TIPO_DOCUMENTOS)
VALUES 	(1,'CPF'),
		(2,'REGISTRO DE IDENTIDADE'),
		(3,'CARTEIRA DE TRABALHO'),
		(4,'CERTIDAO DE NASCIMENTO'),
        (5,'TITULO DE ELEITOR');
		

INSERT INTO DOCUMENTOS(ID,NUMERO_DOCUMENTO,FK_TIPO_DOCUMENTOS,FK_PESSOAS)
VALUES	(1,'111.111.111-11',1,1),
		(2,'1.111.11-ES',2,2),
		(3,'111.111.111-12',1,3),
		(4,'111.111.111-13',1,4),
		(5,'111.111.111-14',1,5);
	
INSERT INTO DATA_NASCIMENTO(ID,DATA_NASCIMENTO,FK_PESSOAS)
VALUES	(1,'07/08/1994',1),
		(2,'07/08/1995',2),
		(3,'07/08/1996',3),
		(4,'07/08/1997',4),
		(5,'07/08/1998',5);

INSERT INTO CONTATOS(ID,DESCRICAO_CONTATO)
VALUES 	(1,'3336-6162'),
		(2,'irineu@gmail.com'),
		(3,'carol@xmail.com'),
		(4,'3336-6632'),
		(5,'3336-6165');
		
INSERT INTO TIPO_CONTATO(ID,DESCRICAO)
VALUES	(1,'TELEFONE FIXO'),
		(2,'EMAIL'),
		(3,'TELEFONE CELULAR'),
		(4,'FACEBOOK'),
		(5,'SKYPE');

INSERT INTO VINCULO_EMPREGATICIO(ID,SITUACAO)
VALUES (1,TRUE),
	   (2,FALSE);
	   
INSERT INTO RENDA_FAMILIAR(FK_PESSOAS,FK_VINCULO_EMPREGATICIO,RENDA_MENSAL)
VALUES (1,1,1548.65),
	   (2,2,0),
	   (3,2,0),
	   (4,1,25000.68),
	   (5,2,0);

INSERT INTO QUADRO_FAMILIAR(ID,FK_PESSOAS_ALUNO,FK_PESSOAS_FAMILIARES,GRAU_PARENTESCO)
VALUES (1,1,1,'MAE'),
	   (2,1,2,'PAI'),
	   (3,1,3,'IRMAO'),
	   (4,1,4,'AVO');
	 
INSERT INTO ESTADO(ID,ESTADO)
VALUES	(1,'ESPIRTO SANTO'),
		(2,'MINAS GERAIS'),
		(3,'RIO DE JANEIRO'),
		(4,'SAO PAULO'),
		(5,'CEARA');
		
INSERT INTO CIDADE(ID,NOME,FK_ESTADO)
VALUES	(1,'VITORIA',1),
		(2,'BELO HORIZONTE',2),
		(3,'NOVA IGUACU',3),
		(4,'SAO PAULO',4),
		(5,'FORTALEZA',5);

INSERT INTO BAIRRO(ID,NOME,FK_CIDADE)
VALUES (1,'JARDIM CAMBURI',1),
	   (2,'LAGOINHA',2),
	   (3,'BOTAFOGO',3),
	   (4,'ITAQUERA',4),
	   (5,'ITAPERI',5);

INSERT INTO RUA(ID,NOME,FK_BAIRRO)
VALUES	(1,'RUA SETE DE SETEMBRO',1),
		(2,'AVENIDA NOVE DE JULHO',2),
		(3,'AVENIDA BRASIL',3),
		(4,'AVENIDA PAULISTA',4),
		(5,'RUA VINTE',5);
		
INSERT INTO AUXILIO(ID,FK_MODALIDADE,FK_ALUNO)
VALUES	(1,1,20151002),
		(2,5,20151002),
		(3,9,20151004),
		(4,5,20151001),
		(5,3,20151004);

INSERT INTO TIPO_AUXILIO(ID,TIPO)
VALUES	(1,'TRANSPORTE'),
		(2,'ALIMENTACAO'),
		(3,'MORADIA'),
        (4,'DIDATICO');

INSERT INTO MODALIDADE_AUXILIOS(ID,TIPO,DESCRICAO,FK_TIPO_AUXILIO)
VALUES	(1,'GV1','SISTEMA TRANSCOL IDA E VOLTA', 1),
		(2,'GV2','SISTEMA TRANSCOL IDA E VOLTA + 1 PASSAGEM', 1),
		(3,'GV3','SISTEMA INTERMUNICIPAL EX: AGUIA BRANCA', 1),
		(4,'M1','ALUGUEL MENSAL 250 REAIS', 3),
		(5,'M2','ALUGUEL MENSAL 350 REAIS', 3),
		(6,'M3','ALUGUEL MENSAL 450 REAIS', 3),
		(7,'AL1','UMA REFEICAO NO CAMPUS', 2),
		(8,'AL2','DUAS REFEICOES NO CAMPUS', 2),
		(9,'DID','COMPRA DE MATERIAIS DIDATICOS', 4);
		
INSERT INTO DOCUMENTOS_COMPROBATORIOS(MATRICULA, DOCUMENTACAO)
VALUES	(20151001, 'ANEXOS'),
		(20151002, 'ANEXOS'),
		(20151003, 'ANEXOS'),
		(20151004, 'ANEXOS'),
		(20151005, 'ANEXOS');

INSERT INTO ATIVIDADES (ID,TIPO_DE_ATIVIDADE)
VALUES (1,'LAZER'),
	   (2,'ESTAGIO'),
	   (3,'ESTUDO');

INSERT INTO HORARIO(ID,HORAS)
VALUES (1,'01:00'),
	   (2,'02:00'),
	   (3,'03:00'),
	   (4,'04:00'),
	   (5,'05:00'),
       (6,'06:00'),
       (7,'07:00'),
       (8,'08:00'),
       (9,'09:00'),
       (10,'10:00'),
       (11,'11:00'),
       (12,'12:00'),
       (13,'13:00'),
       (14,'14:00'),
       (15,'15:00'),
       (16,'16:00'),
       (17,'17:00'),
       (18,'18:00'),
       (19,'19:00'),
       (20,'20:00'),
       (21,'21:00'),
       (22,'22:00'),
       (23,'23:00'),
       (24,'24:00');
       
INSERT INTO DETALHAMENTO_ATIVIDADE(FK_ATIVIDADES,DESCRICAO_ATIVIDADE,FK_HORARIO_INI,FK_HORARIO_FIM)
VALUES (1,'JOGUEI FUTEBOL',1,3),
	   (2,'SUPORTE TECNICO NO BANESTES',4,6),
	   (3,'ESTUDEI JOIN DA MATERIA DE BD',7,8);
	   
INSERT INTO DIA_SEMANA(ID,NOME)
VALUES (1,'SEGUNDA'),
       (2,'TERCA'),
       (3,'QUARTA'),
       (4,'QUINTA'),
       (5,'SEXTA'),
       (6,'SABADO'),
       (7,'DOMINGO');
       
INSERT INTO EVASAO_QUADRO_ATIVIDADES(ID,FK_ALUNO,FK_DIA_SEMANA,FK_DETALHAMENTO_ATIVIDADE)
VALUES (1,20151001,1,1),
       (2,20151001,1,2),
       (3,20151001,3,1),
       (4,20151001,4,3),
       (5,20151001,2,3),
       (6,20151001,5,3),
       (7,20151001,6,1);

INSERT INTO DISCIPLINAS(ID,DISCIPLINA)
VALUES	(1,'CALCULO 1'),
		(2,'PROGRAMACAO 1'),
        (3,'LOGICA'),
        (4,'METODOLOGIA DA PESQUISA'),
        (5,'COMUNICACAO EMPRESARIAL'),
        (6,'FUNDAMENTOS DE SISTEMAS DE INFORMACAO'),
		(7,'CALCULO 2'),
        (8,'PROGRAMACAO 2'),
        (9,'MATEMATICA DISCRETA'),
        (10,'TEORIA GERAL DA ADMINISTRACAO'),
        (11,'ARQUITETURA E ORGANIZACAO DE COMPUTADORES'),
		(12,'PROBABILIDADE ESTATISTICA'),
        (13,'ESTRUTURA DE DADOS'),
        (14,'TEORIA GERAL DE SISTEMAS'),
        (15,'SISTEMAS OPERACIONAIS'),
        (16,'ADMINISTRACAO FINANCEIRA'),
		(17,'PROGRAMACAO ORIENTADA A OBJETOS 1'),
        (18,'BANCO DE DADOS 1'),
        (19,'ANALISE DE SISTEMAS'),
        (20,'SISTEMAS DE APOIO A DECISAO'),
        (21,'REDES DE COMPUTADORES'),
        (22,'SOCIOLOGIA'),
		(23,'LINGUAGENS FORMAIS E AUTOMOMATOS'),
        (24,'BANCO DA DADOS 2'),
        (25,'PROGRAMACAO ORIENTADA A OBJETOS 2'),
        (26,'ENGENHARIA DE SOFTWARE'),
        (27,'PROJETO DE SISTEMAS'),
		(28,'ANTEPROJETO'),
        (29,'EMPREENDEDORISMO'),
        (30,'TECNICAS AVANÇADAS DE PROGRAMACAO'),
        (31,'GERENCIA DE PROJETOS SW'),
        (32,'SISTEMAS DISTRIBUIDOS'),
        (33,'ADMINISTRACAO DA PRODUCAO E LOGISTICA'),
		(34,'PROJETO DE DIPLOMACAO 1'),
        (35,'LABORATORIO DE ENGENHARIA DE SOFTWARE'),
        (36,'COMERCIO ELETRONICO'),
        (37,'DESENVOLVIMENTO WEB'),
        (38,'GESTAO DE SISTEMAS DE INFORMACAO'),
		(39,'PROJETO DE DIPLOMACAO 2'),
        (40,'OPTATIVA 1'),
        (41,'OPTATIVA 2'),
        (42,'OPTATIVA 3'),
        (43,'ETICA E LEGISLACAO'),
        (44,'INFORMATICA E SOCIEDADE');

INSERT INTO DETALHAMENTO_DIFICULDADES(ID,DESCRICAO)
VALUES (1,'DERIVADAS EM CÁLCULO'),
       (2,'CRIAR FICHAMENTOS E MAPAS MENTAIS'),
       (3,'FALTA DE RACIOCINIO LOGICO EM PROGRAMACAO');
       
INSERT INTO DIFICULDADES(ID,FK_ALUNO,FK_DISCIPLINAS,FK_DETALHAMENTO_DIFICULDADES)
VALUES (1,20151001,1,1),
       (2,20151001,2,2),
       (3,20151002,3,3),
       (4,20151002,4,2),
       (5,20151003,5,1);

INSERT INTO ALUNOS_INTERESSADOS_PARTICIPAR_ASSISTENCIA(FK_ALUNO)
VALUES	(20151004),
		(20151005);

	
INSERT INTO ALUNOS_JA_PARTICIPANTES_ASSISTENCIA(FK_ALUNO)
VALUES	(20151001),
		(20151002),
		(20151003);

		
INSERT INTO ALUNOS_PENDENCIAS_DOCUMENTOS(FK_ALUNO,FK_TIPO_DOCUMENTOS)
VALUES	(20151001,1),
		(20151002,2),
		(20151003,3);