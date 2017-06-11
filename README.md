# TRABALHO 01 - EVASÃO E AUTOMAÇÃO ASSISTÊNCIA ESTUDANTIL
Trabalho com objetivo de avaliação da disciplina de banco de dados 1, do Insitituto Federal do Espirito Santo - Campus Serra.

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Antonio Carlos Lemos Junior: antoniocarloslemosjunior@gmail.com<br>
Landerson Morais Alexandre: <br>
Lucas Oliveira Garcia: lucasoliveiragarcia@live.com<br>
Paulo Ricardo Viana Ferreira: paulo_ricardosf@outlook.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto de banco de dados "EVASÃO E AUTOMAÇÃO ASSISTÊNCIA ESTUDANTIL".
O trabalho visa mapear as principais dificuldades dos alunos e também, amenizar o processo de inscrição da assistência estudantil.<br>

### 3.MINI-MUNDO<br>

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) <br>
Entrevista com o usuário e identificação dos requisitos.<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

Um dos objetivos Acabar com as pilhas enormes de papeis no processo de entrada do aluno na assistência estudantil do campus. O projeto visa também economia de custos com xerox e menos circulação de papel.
Avaliar os alunos com questionamentos, visando controlar e prever a evasão em cursos considerados de extrema dificuldade.  
O projeto visa entender e compreender as dificuldades de um aluno que está com um provável pensamento de desistência do curso.  
Buscando manter a identidade do aluno apenas entre as entidades envolvidas, iremos realizar questionamentos e com base nos dados recolhidos, poderíamos apontar por exemplo, em quais matérias o aluno tem dificuldade.  
Os dados seriam obtidos por meio de entrevistas presencias e formulários eletrônicos.  
Buscando identificar um padrão de aluno que possa vir a evadir do curso. E com os dados coletados, poderíamos ver onde é necessário algum tipo de mudança, ou a inclusão de projetos que auxiliem o aluno.   
O Projeto visa também eliminar de vez os papeis da assistência estudantil. Visando escaneamento dos documentos solicitados pela assistência estudantil com verificação de autenticidade dos documentos informados. Com a coleta dos dados, as profissionais do setor teriam mais agilidade no processo, visando analises com os critérios de avaliação das mesmas. 

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Link para o resto do rascunho: https://github.com/projetobdifes01/ProjetoBD/blob/master/balsamiq.pdf<br>



#### 4.1 TABELA DE DADOS DO SISTEMA:
    Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    (esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual)
    
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/Tabelas%2001.PNG)
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/tabelas%2002.PNG)         
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/Tabelas%2003.PNG)
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/Tabelas%2004.PNG)
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/Tabelas%2005.PNG)
  

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/modelo_conceitual.jpg?raw=true)
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    Seguem abaixo as decisões das descrições dos dados. 
    
    Tabela ALUNO:
	a) Campo MATRICULA: No projeto, optamos por manter um campo com multiplos valores pois, tal campo recebe como identificão valores como o ano/semestre/siglacurso/numeroderegistro. 
	b) Campo FK_PESSOAS: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela TIPO_DOCUMENTOS:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo TIPO_DOCUMENTO: No projeto, optamos por manter um campo com multiplos valores pois, tal campo recebe valores já pré estabelecidos pois não mudam constantemente.

	Tabela DOCUMENTOS:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo NUMERO_DOCUMENTO: No projeto, optamos por manter um campo com multiplos valores pois, tal campo recebe valores com pontos ou traços como o caso do CPF.
	c) Campo FK_DOCUMENTACAO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	d) Campo FK_PESSOAS: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela DATA_NASCIMENTO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DATA_NASCIMENTO: Campo recebe a variavel date, pois o mesmo recebera apenas valores como datas. 
	d) Campo FK_PESSOAS: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela CONTATOS:
	a) Campo CODIGO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DESCRICAO_CONTATO: Recebe multiplos valores pois tal campo sera preenchido pelo usuário

	Tabela TIPO_CONTATO:
	a) Campo CODIGO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DESCRICAO: Recebe multiplos valores pois tal campo sera preenchido pelo usuário.

	Tabela Pessoas:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo Nome: Recebe valores de texto, pois será usado apenas para armazenar letras. 

	Tabela VINCULO_EMPREGATICIO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo Situacao: Recebe Booleano pois só precisaremos, para futuras análises se sim ou não.

	Tabela RENDA_FAMILIAR:
	a) Campo FK_PESSOAS: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_VINCULO_EMPREGATICIO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	c) Campo RENDA_MENSAL: Recebe o tipo Money por se tratar de armazenamento de valores em dinheiro. 

	Tabela QUADRO_FAMILIAR:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_PESSOAS(ALUNO): Campo recebe inteiro, para melhor desempenho e futuras seleções.
	c) Campo FK_PESSOAS(FAMILIAR): Campo recebe inteiro, para melhor desempenho e futuras seleções.
	d) Campo GRAU_PARENENTESCO: Campo recebe valores multiplos pois será preenchido pelo usuário. 

	Tabela ESTADO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo NOME: Recebe valores de texto, pois será usado apenas para armazenar letras. 

	Tabela CIDADE:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo NOME: Recebe valores de texto, pois será usado apenas para armazenar letras. 
	c) Campo FK_ESTADO: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela BAIRRO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo NOME: Recebe valores de texto, pois será usado apenas para armazenar letras. 
	c) Campo FK_CIDADE: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela CIDADE:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo NOME: Recebe valores de texto, pois será usado apenas para armazenar letras. 
	c) Campo FK_RUA: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela AUXILIO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_MODALIDADE: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	c) Campo FK_ALUNO: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela TIPO_DE_AUXILIO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo TIPO: Campo Recebe Valors Multiplos Já Estabelecidos pelos administradores, pois ira trabalhar com letras e números. 

	Tabela MODALIDADE:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo TIPO: Campo Recebe Valors Multiplos Já Estabelecidos pelos administradores, pois ira trabalhar com letras e números
	c) Campo DESCRICAO: Campo Recebe Valors Multiplos Já Estabelecidos pelos administradores, pois ira trabalhar com letras e números
	d) Campo FK_TIPO_DE_AUXILIO: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela DOCUMENTOS_COMPROBATORIOS:
	a) Campo MATRICULA: No projeto, optamos por manter um campo com multiplos valores pois, tal campo recebe como identificão valores como o ano/semestre/siglacurso/numeroderegistro. 
	b) Campo DOCUMENTACAO: Campo que ira receber anexos em pdf dos documentos enviados pelos alunos. 

	Tabela ATIVIDADES:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo TIPO_DE_ATIVIDADE: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela DETALHAMENTO_ATIVIDADE:
	a) Campo FK_ATIVIDADE: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DESCRICAO_ATIVIDADE: Campo que recebe valores multiplos pois ira ser preenchido pelo usuário.
	c) Campo (FK-ID_HORARIO)HORA_INICIO: Campo que ira expor as horas em intervalos ja pre estabelcidos.
	d) Campo (FK-ID_HORARIO)HORA_FIM: Campo que ira expor as horas em intervalos ja pre estabelcidos.

	Tabela HORARIO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo HORAS: Campo recebe variavel do tipo para marcar hora de inicio/fim.

	Tabela EVASAO_QUADRO_DIFICULDADES:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_ALUNO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	c) Campo FK_PESSOAS_DIA_SEMANA: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	d) Campo FK_DETALHAMENTO_ATIVIDADE: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela DIA_SEMANA:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo NOME: Campo que recebe valores de texto já pre estabelecidos.

	Tabela DISCIPLINAS:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo NOME: Campo que recebe valores de texto já pre estabelecidos.

	Tabela DIFICULDADES:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_ALUNO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	c) Campo FK_DISCIPLINA: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	d) Campo FK_DETALHAMENTO_ATIVIDADE:Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela DETALHAMENTO_ATIVIDADE:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DESCRICAO:  Campo que recebe valores de texto que serao digitados pelos usuários.

	Tabela ALUNOS_INTERESSADOS_PARTICIPAR_ASSISTENCIA:
	a) Campo FK_ALUNO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
      
	Tabela ALUNOS_JA_PARTICIPANTES_ASSISTENCIA:
	a) Campo FK_ALUNO: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela ASSISTENCIA_ALUNOS_PENDENCIA_DOCUMENTO:
	a) Campo: FK_ALUNO: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo: FK_TIPO_DOCUMENTOS: Campo recebe inteiro, para melhor desempenho e futuras seleções.



#### 5.3 DESCRIÇÃO DOS DADOS 

	
    Seguem abaixo a descrição dos dados: 
	Tabela ALUNO: Armazena a matricula e a relacao com a tabela de pessoas que o aluno possui.
	a) Campo MATRICULA: Armazena a Matricula do Aluno da Instituição.
	b) Campo FK_PESSOAS: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela TIPO_DOCUMENTOS: Tabela que armazena os tipos de documentos em geral. 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo TIPO_DOCUMENTO: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela DOCUMENTOS:  Tabela que Armazena o núemro do documento fornecido pelo usuário.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo NUMERO_DOCUMENTO: Armazena o número do documento informado pelo usuário.
	c) Campo FK_DOCUMENTACAO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	d) Campo FK_PESSOAS: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela DATA_NASCIMENTO: Tabela que armazena datas de nascimentos diversas. 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DATA_NASCIMENTO: armazena a data de nascimento da pessoa.
	d) Campo FK_PESSOAS: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela CONTATOS: 
	a) Campo CODIGO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO_CONTATO: 

	Tabela TIPO_CONTATO:
	a) Campo CODIGO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO: 

	Tabela Pessoas:
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo Nome: 

	Tabela VINCULO_EMPREGATICIO:
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo Situacao: 

	Tabela RENDA_FAMILIAR:
	a) Campo FK_PESSOAS: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_VINCULO_EMPREGATICIO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	c) Campo RENDA_MENSAL: 

	Tabela QUADRO_FAMILIAR:
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_PESSOAS(ALUNO): Armazena o valor em inteiro para futuras seleções e relacionamentos.
	c) Campo FK_PESSOAS(FAMILIAR): Armazena o valor em inteiro para futuras seleções e relacionamentos.
	d) Campo GRAU_PARENENTESCO: 

	Tabela ESTADO: Tabela que armazena estados brasileiros. 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo NOME: Recebe o Nome do Estado.

	Tabela CIDADE: Tabela que armazena as cidades brasileiras. 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo NOME: Recebe o Nome da Cidade.
	c) Campo FK_ESTADO: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela BAIRRO: Tabela que armazena bairros brasileiros.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo NOME: Recebe o Nome do Bairro.
	c) Campo FK_CIDADE: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela RUA: Tabela que armazena ruas brasileiras 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo NOME: Recebe o Nome da Rua.
	c) Campo FK_ID_BAIRRO: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela AUXILIO: Tabela que contem uma lista com os alunos que possuem tais auxilios e seus subtipos. 
	a) Campo ID: Armazena o id do tipo principal do auxilio.
	b) Campo FK_MODALIDADE: Armazena o Relacionamento com o Subtipo do Auxilio Principal. 
	c) Campo FK_ALUNO: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela TIPO_DE_AUXILIO: Tabela que armazena os principais tipos de auxilios (Valores Preenchidos Pelos Funcioários do Setor)
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo TIPO: recebe os tipos principais dos auxilios. Ex: Transporte, ALimentação etc. 

	Tabela MODALIDADE: Tabela que armazena uma lista com os sub-tipos de auxilios que o setor de assistencia estudantil dispoe. (Valores Preenchidos Pelos Funcioários do Setor)
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo TIPO: Informa o tipo do auxilio. Ex: Gv1(Apenas Sistema Transcol) etc..
	c) Campo DESCRICAO: Descreve o tipo acima.
	d) Campo FK_TIPO_DE_AUXILIO:Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela DOCUMENTOS_COMPROBATORIOS: Tabela que armazena anexos de documentos em pdf.
	a) Campo MATRICULA: Armazena as matriculas que se encaixam na seleção.
	b) Campo DOCUMENTACAO: Armazena o arquivo descrito acima.

	Tabela ATIVIDADES: Tabela que armazena atividades em geral. 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo TIPO_DE_ATIVIDADE: Recebe tipos de atividades. Ex: Estagio, Estudo, Outros. 

	Tabela DETALHAMENTO_ATIVIDADE: Tabela que armazena atividades descritas pelos alunos. 
	a) Campo FK_ATIVIDADE:  Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO_ATIVIDADE: Recebe a descrição de N atividades que tal aluno faz.
	c) Campo (FK-ID_HORARIO)HORA_INICIO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	d) Campo (FK-ID_HORARIO)HORA_FIM: Armazena o valor em inteiro para futuras seleções e relacionamentos.

	Tabela HORARIO: Tabela que armazena um intervalo de horas.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo HORAS: Recebe um intervalo de horas. 

	Tabela EVASAO_QUADRO_DIFICULDADES:
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_ALUNO:  Recebe o Aluno que descreverá sua rotina semanal.
	c) Campo FK_PESSOAS_DIA_SEMANA: Recebe o dia em que o aluno acima fez tal atividade.
	d) Campo FK_DETALHAMENTO_ATIVIDADE: Recebe a dificuldade em que o aluno descrito fez. 

	Tabela DIA_SEMANA: Tabela que recebe os dias de semana, para seleções e relacionamentos.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo NOME: Recebe o dia de semana.

	Tabela DISCIPLINAS: Tabela que armazena todas as disciplinas do curso.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo NOME: Recebe o nome das disciplinas 

	Tabela DIFICULDADES: Tabela que relaciona os alunos com as disciplinas e dificuldades 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_ALUNO: Recebe o aluno que esta com a dificuldade x na materia y.
	c) Campo FK_DISCIPLINA: Recebe a Disciplina y em que o aluno possui dificuldade 
	d) Campo FK_DETALHAMENTO_ATIVIDADE: Recebe as dificuldades detalhadas pelo aluno. 

	Tabela DETALHAMENTO_ATIVIDADE: Tabela que informa os detalhes descritos pelo usuário para as dificuldades encontradas 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO:  Armazena a descrição da dificuldade informada.

	Tabela ALUNOS_INTERESSADOS_PARTICIPAR_ASSISTENCIA: Tabela que informa os alunos que possuem interesse em participar da assistencia estudantil. 
	a) Campo FK_ALUNO: Armazena as matriculas que se encaixam na seleção.

	Tabela ALUNOS_JA_PARTICIPANTES_ASSISTENCIA: Tabela que informa os alunos que ja possuem auxilios.
	a) Campo FK_ALUNO: Armazena as matriculas que se encaixam na seleção.

	Tabela ASSISTENCIA_ALUNOS_PENDENCIA_DOCUMENTO: Tabela que informa os alunos que possuem pendencia com o setor de assistencia. 
	a) Campo: FK_ALUNO: Armazena o inteiro de relacioamento com o aluno que se encaixa na seleção prescrita pela tabela. 
	b) Campo: FK_TIPO_DOCUMENTOS: Armazena as matriculas que se encaixam na seleção.
	
### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
        
        
        
        Entrega até este ponto em: (Data a ser definida)

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
	
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
	
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
	/*ERRO*/
	INSERT INTO QUADRO_FAMILIAR(FK_PESSOAS_ALUNO,FK_PESSOAS_FAMILIARES,GRAU_PARENTESCO)
	VALUES (5,4,'MAE'),
		(5,3,'PAI'),
		(5,2,'IRMAO'),
		(5,1,'AVO');

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


	/*ERRO* /  
	INSERT INTO EVASAO_QUADRO_ATIVIDADES(FK_ALUNO,FK_DIA_SEMANA,FK_DETALHAMENTO_ATIVIDADE)
	VALUES (20151001,1,1),
	       (20151001,1,2),
	       (20151001,3,1),
	       (20151001,4,3),
	       (20151001,2,3),
	       (20151001,5,3),
	       (20151001,6,1);

	INSERT INTO DIA_SEMANA(ID,NOME)
	VALUES (1,'SEGUNDA'),
	       (2,'TERCA'),
	       (3,'QUARTA'),
	       (4,'QUINTA'),
	       (5,'SEXTA'),
	       (6,'SABADO'),
	       (7,'DOMINGO');
	ALTER TABLE DISCIPLINAS RENAME COLUMN DISCPLINA TO DISCIPLINA;
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
	/*NAO PODE INSERIR O MESMO ALUNO MAIS DE UMA VEZ PQ É  CHAVE PRIMARIA*/		
	INSERT INTO DIFICULDADES(FK_ALUNO,FK_DISCIPLINAS,FK_DETALHAMENTO_DIFICULDADES)
	VALUES (20151001,1,1),
	       (20151001,2,2),
	       (20151002,3,3),
	       (20151002,4,4),
	       (20151003,5,5);

	INSERT INTO DETALHAMENTO_DIFICULDADES(ID,DESCRICAO)
	VALUES (1,'DERIVADAS EM CÁLCULO'),
	       (2,'CRIAR FICHAMENTOS E MAPAS MENTAIS'),
	       (3,'FALTA DE RACIOCINIO LOGICO EM PROGRAMACAO');

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

	
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam) 
	

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br> Jesus Cristo 
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
        Entrega até este ponto em: (Data a ser definida)
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
### OBSERVAÇÕES IMPORTANTES

#### Em tese todos os arquivos do trabalho devem ser compartilhados no git 
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.

