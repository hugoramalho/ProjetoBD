# TRABALHO 01 - EVASÃO E AUTOMAÇÃO ASSISTÊNCIA ESTUDANTIL
Trabalho com objetivo de avaliação da disciplina de banco de dados 1, do Insitituto Federal do Espirito Santo - Campus Serra.

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Antonio Carlos Lemos Junior: antoniocarloslemosjunior@gmail.com<br>
Lucas Oliveira Garcia: lucasoliveiragarcia@live.com<br>
Paulo Ricardo Viana Ferreira: paulo_ricardosf@outlook.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto de banco de dados "EVASÃO E AUTOMAÇÃO ASSISTÊNCIA ESTUDANTIL".
O trabalho visa mapear as principais dificuldades dos alunos e também, amenizar o processo de inscrição da assistência estudantil.<br>

### 3.MINI-MUNDO<br>

Basicamente, o aluno se inscreve com todos os dados, após ter lido todo o edital de inscrição dos auxilios. Com a confirmação de leitura, o aluno fornece os anexos em pdf dos documentos. 
As funcionárias do setor avaliam a situação do aluno e divulgam os resultados finais, com base nos dados obtidos dos alunos que querem participar do auxilio.
Ja na parte de controle de evasão. O aluno que está passando por dificuldades pode descrever tais fatores que podem estar dificultando sua permanencia no campus, para que o gerenciador do sistema veja e relate a coordenação do curso ou quem for de interesse para que projetos sejam montados com base nos dados. 
Um dos objetivos Acabar com as pilhas enormes de papeis no processo de entrada do aluno na assistência estudantil do campus. 
O projeto visa também economia de custos com xerox e menos circulação de papel.
Avaliar os alunos com questionamentos, visando controlar e prever a evasão em cursos considerados de extrema dificuldade.  
O projeto visa entender e compreender as dificuldades de um aluno que está com um provável pensamento de desistência do curso.  
Buscando manter a identidade do aluno apenas entre as entidades envolvidas, iremos realizar questionamentos e com base nos dados recolhidos, poderíamos apontar por exemplo, em quais matérias o aluno tem dificuldade.  
Os dados seriam obtidos por meio de entrevistas presencias e formulários eletrônicos.  
Buscando identificar um padrão de aluno que possa vir a evadir do curso. E com os dados coletados, poderíamos ver onde é necessário algum tipo de mudança, ou a inclusão de projetos que auxiliem o aluno.   
O Projeto visa também eliminar de vez os papeis da assistência estudantil. Visando escaneamento dos documentos solicitados pela assistência estudantil com verificação de autenticidade dos documentos informados. Com a coleta dos dados, as profissionais do setor teriam mais agilidade no processo, visando analises com os critérios de avaliação das mesmas. 
. 

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

 ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/tela%201.PNG)

Link para o resto do rascunho: https://github.com/projetobdifes01/ProjetoBD/blob/master/balsamiq.pdf<br>



#### 4.1 TABELA DE DADOS DO SISTEMA:
    Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    (esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual)
    
   Versão completa da tabela: https://github.com/projetobdifes01/ProjetoBD/blob/master/Dados-Tabela%20Inicial.xlsx
   
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/tabe.PNG)

  

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/Modelo-Conceitual.jpg?raw=true)
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
#### 5.1 Validação do Modelo Conceitual
    [Projeto de Manutenção]: [Gabriel Pontes, Helen Franca e Olavo Curatola]
    [Mani Mobile]: [Marcelo Passamai Mendes, João Pedro Vieira] 

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

	Tabela CONTATOS:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DESCRICAO_CONTATO: Recebe multiplos valores pois tal campo sera preenchido pelo usuário

	Tabela TIPO_CONTATO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DESCRICAO: Recebe multiplos valores pois tal campo sera preenchido pelo usuário.

	Tabela Pessoas:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo Nome: Recebe valores de texto, pois será usado apenas para armazenar letras. 

	Tabela RENDA_FAMILIAR:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_PESSOAS: Campo recebe inteiro, para melhor desempenho e futuras seleções.
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
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DOCUMENTACAO: Campo que ira receber anexos em pdf dos documentos enviados pelos alunos. 
	c) Campo FK_ALUNO: Campo recebe inteiro, permintindo a identificacao do mesmo.

	Tabela ATIVIDADES:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo TIPO_DE_ATIVIDADE: Campo recebe inteiro, para melhor desempenho e futuras seleções.

	Tabela DETALHAMENTO_ATIVIDADE:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo DESCRICAO_ATIVIDADE: Campo que recebe valores multiplos pois ira ser preenchido pelo usuário.
	c) Campo (FK-ID_HORARIO)HORA_INICIO: Campo que ira expor as horas em intervalos ja pre estabelcidos.
	d) Campo (FK-ID_HORARIO)HORA_FIM: Campo que ira expor as horas em intervalos ja pre estabelcidos.
	e) Campo FK_ATIVIDADE: Campo recebe inteiro, com o tipo da atividade.

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

	Tabela INTERESSADOS_PARTICIPAR:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_ALUNO: Campo recebe inteiro, permintindo a identificacao do mesmo.
      
	Tabela PARTICIPANTES:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_ALUNO: Recebe o ID do aluno permintindo a identificacao do mesmo.

	Tabela PENDENCIA_DOCUMENTO:
	a) Campo ID: Campo recebe inteiro, para melhor desempenho e futuras seleções.
	b) Campo FK_ALUNO: Recebe o ID do aluno permintindo a identificacao do mesmo.
	c) Campo FK_TIPO_DOCUMENTOS: Campo recebe inteiro, para melhor desempenho e futuras seleções.



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

	Tabela CONTATOS: Tabela que armazena contatos em geral
	a) Campo CODIGO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO_CONTATO: recebe a descrição do contato.

	Tabela TIPO_CONTATO: Tabela que armazena o tipo do contato. E-mail. Telefone Etc.
	a) Campo CODIGO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO: Recebe a descrição do tipo.

	Tabela Pessoas: Tabela que armazena pessoas em geral.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo Nome: Recebe o nome da pessoa.

	Tabela RENDA_FAMILIAR: Tabela que armazena as pessoas e suas respectivas rendas.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_PESSOAS: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	c) Campo RENDA_MENSAL: Armazena o valor da renda das pessoas relacionadas acima. 

	Tabela QUADRO_FAMILIAR: Tabela que armazena as pessoas que estao relacionadas com o aluno X.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_PESSOAS(ALUNO): Armazena o valor do inteiro referente ao Aluno.
	c) Campo FK_PESSOAS(FAMILIAR): Armazena o valor em inteiro referente a pessoa relacionada ao aluno.
	d) Campo GRAU_PARENENTESCO: Armazena o grau parentesco em que a pessoa relacionada ao aluno está envolida.

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
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO_ATIVIDADE: Recebe a descrição de N atividades que tal aluno faz.
	c) Campo (FK-ID_HORARIO)HORA_INICIO: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	d) Campo (FK-ID_HORARIO)HORA_FIM: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	e) Campo FK_ATIVIDADE:  Armazena o valor em inteiro para futuras seleções e relacionamentos.

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

	abela DETALHAMENTO_DIFICULDADES: Tabela que informa os detalhes descritos pelo usuário para as dificuldades encontradas 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo DESCRICAO:  Armazena a descrição da dificuldade informada.T

	Tabela INTERESSADOS_PARTICIPAR: Tabela que informa os alunos que possuem interesse em participar da assistencia estudantil. 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_ALUNO: Armazena as matriculas que se encaixam na seleção.

	Tabela PARTICIPANTES: Tabela que informa os alunos que ja possuem auxilios.
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	b) Campo FK_ALUNO: Armazena as matriculas que se encaixam na seleção.

	Tabela PENDENCIA_DOCUMENTO: Tabela que informa os alunos que possuem pendencia com o setor de assistencia. 
	a) Campo ID: Armazena o valor em inteiro para futuras seleções e relacionamentos.
	a) Campo: FK_ALUNO: Armazena o inteiro de relacioamento com o aluno que se encaixa na seleção prescrita pela tabela. 
	b) Campo: FK_TIPO_DOCUMENTOS: Armazena as matriculas que se encaixam na seleção.
	
### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados  
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/LOGICO%2002.jpg)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        Link do Modelo Lógico: https://github.com/projetobdifes01/ProjetoBD/blob/master/BD.sql

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
	
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
	
https://github.com/projetobdifes01/ProjetoBD/blob/master/inserts_trabalho.sql
	
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam) 
	

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
https://github.com/projetobdifes01/ProjetoBD/blob/master/BD.sql

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>  
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

	SELECT * FROM ALUNO;
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/aluno.JPG)
  
  	SELECT * FROM INTERESSADOS_PARTICIPAR;
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/inrteressados_participar.JPG)
	
	SELECT * FROM PARTICIPANTES;
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/participantes.JPG)
  
  	SELECT * FROM PENDENCIAS_DOCUMENTOS;
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/pendencias_documentos.JPG)
  
  	SELECT * FROM ATIVIDADES;
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/atividades.JPG)
	
	SELECT * FROM AUXILIO;
  ![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/auxilio.JPG)
	
	SELECT * FROM BAIRRO;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/bairro.JPG)
	
	SELECT * FROM CIDADE;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/cidade.JPG)
	
	SELECT * FROM CONTATOS;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/contatos.JPG)
	
	SELECT * FROM DATA_NASCIMENTO;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/data_nascimento.jpg)
	
	SELECT * FROM DETALHAMENTO_ATIVIDADE;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/detalhamento_atividade.JPG)
	
	SELECT * FROM DETALHAMENTO_DIFICULDADES;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/detalhamento_dificuldades.JPG)
	
	SELECT * FROM DIA_SEMANA;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/dia_semana.JPG)
	
	SELECT * FROM DIFICULDADES;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/dificuldades.JPG)
	
	SELECT * FROM DISCIPLINAS;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/disciplinas.JPG)
	
	SELECT * FROM DOCUMENTOS;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/documentos.jpg)
	
	SELECT * FROM DOCUMENTOS_COMPROBATORIOS;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/documentos_comprobatorios.JPG)
	
	SELECT * FROM ESTADO; 
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/estado.JPG)
	
	SELECT * FROM EVASAO_QUADRO_ATIVIDADES;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/evasao_quadro_atividades.JPG)
	
	SELECT * FROM HORARIO; 
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/horario.JPG)
	
	SELECT * FROM MODALIDADE_AUXILIOS;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/modalidade_auxilios.JPG)
	
	SELECT * FROM PARENTESCO;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/parentesco.JPG)
	
	SELECT * FROM PESSOAS;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/pessoas.jpg)
	
	SELECT * FROM QUADRO_FAMILIAR;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/quadro_familiar.JPG)
	
	SELECT * FROM RENDA_FAMILIAR;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/renda_familiar.JPG)
	
	SELECT * FROM RUA;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/rua.JPG)
	
	SELECT * FROM TIPO_AUXILIO;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/tipo_auxilio.JPG)
	
	SELECT * FROM TIPO_CONTATO;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/tipo_contato.JPG)
	
	SELECT * FROM TIPO_DOCUMENTOS;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/tipo_documentos.JPG)
	
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>

	SELECT * FROM ALUNO WHERE MATRICULA=20151001;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.2.JPG)
	
	SELECT * FROM TIPO_AUXILIO WHERE ID=1;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.2.JPG)
	
	SELECT * FROM RENDA_FAMILIAR WHERE RENDA_MENSAL='0';
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.2.JPG)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>

	SELECT TIPO,DESCRICAO,FK_TIPO_AUXILIO AS TIPO_AUXILIO FROM MODALIDADE_AUXILIOS WHERE FK_TIPO_AUXILIO=1 OR FK_TIPO_AUXILIO=3;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.3.JPG)
	
	SELECT RENDA_MENSAL,RENDA_MENSAL*1.1 AS RENDA_MENSAL_COM_ACRESCIMO FROM RENDA_FAMILIAR;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.3.JPG)

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>

	SELECT NOME FROM PESSOAS WHERE NOME LIKE 'M%';
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.4.JPG)
	
	SELECT NOME FROM PESSOAS WHERE NOME LIKE '%SILVA%';
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.4.JPG)
	
	SELECT NOME FROM PESSOAS WHERE NOME LIKE '_____________';
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.4.JPG)

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
	update contatos set descricao_contato='marcio@live.com' where descricao_contato='marcio@gmail.com';
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.5.JPG)
	update documentos set numero_documento='111111' where numero_documento='098765';
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.5.JPG)
	update renda_familiar set renda_mensal=500 where id=5;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.5.JPG)
	delete from data_nascimento where data_nascimento = '1960-10-13';
	delete from interessados_participar where fk_aluno = 20151010;
	delete from disciplinas where disciplina = 'CALCULO 2';
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
	select nome as aluno_intessado_participar from pessoas p 
	join aluno a on (p.id=a.fk_pessoas) 
	join interessados_participar i on (a.matricula=i.fk_aluno) order by nome;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.6.JPG)
	select b.nome as bairro,c.nome as cidade,e.estado as estado from bairro b 
	join cidade c on (b.fk_cidade=c.id) 
	join estado e on (e.id=c.fk_estado) order by b.nome;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.6.JPG)
	select fk_aluno,disciplina,descricao as dificuldade from dificuldades di 
	join disciplinas d on (di.fk_disciplinas=d.id)
	join detalhamento_dificuldades de on (di.fk_detalhamento_dificuldades=de.id) order by fk_aluno;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.6.JPG)
	select fk_aluno as matricula,d.nome as dia_semana,descricao_atividade as atividade from evasao_quadro_atividades e
	join dia_semana d on (e.fk_dia_semana=d.id) 
	join detalhamento_atividade de on (e.fk_detalhamento_atividade=de.id)
	order by d.nome desc;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/4-9.6.JPG)
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
	select t.tipo,count(fk_tipo_auxilio) as qtd_modalidades from tipo_auxilio t 
	join modalidade_auxilios m on (t.id=m.fk_tipo_auxilio)
	group by  t.tipo,m.fk_tipo_auxilio;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.7.JPG)
	select grau_parentesco,count(fk_grau_parentesco) from parentesco p
	join quadro_familiar q on (p.id=q.fk_grau_parentesco)
	group by grau_parentesco;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2.9.7.JPG)
	select grau_parentesco,max(renda_mensal) from parentesco p
	join quadro_familiar q on (p.id=q.fk_grau_parentesco)
	join renda_familiar r on (q.fk_pessoas_familiares=r.fk_pessoas)
	group by grau_parentesco;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.7.JPG)
	select tipo_de_atividade,descricao_atividade  from detalhamento_atividade d
	join atividades a on (a.id=d.fk_atividades)
	group by tipo_de_atividade,descricao_atividade;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/4-9.7.JPG)
	select tipo_documentos,count(fk_tipo_documentos) from documentos d
	join tipo_documentos t on (d.fk_tipo_documentos=t.id)
	group by fk_tipo_documentos,tipo_documentos;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/5-9.7.JPG)
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
	select fk_aluno as matricula,disciplina from dificuldades di 
	right join disciplinas d on (di.fk_disciplinas=d.id);
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.8.JPG)
	select nome,matricula from aluno a 
	right join pessoas p on (a.fk_pessoas=p.id);
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.8.JPG)
	select distinct tipo_documentos,fk_tipo_documentos as tipo_documento from tipo_documentos t
	left join documentos d  on (t.id=d.fk_tipo_documentos) order by tipo_documento;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.8.JPG)
	select distinct grau_parentesco,fk_grau_parentesco from parentesco p 
	left join quadro_familiar q on (p.id=q.fk_grau_parentesco) order by fk_grau_parentesco;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/4-9.8.JPG)
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
	create view tipo_e_descricao as select tipo,descricao from modalidade_auxilios;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.9.JPG)
	create view renda_entre_mil_e_dois_mil as select nome,renda_mensal from renda_familiar r
	join pessoas p on (p.id=r.fk_pessoas) where renda_mensal>='1000' and renda_mensal<='2000';
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.9.JPG)
	create view atividade_e_horario as select descricao_atividade,fk_horario_ini,fk_horario_fim 
	from detalhamento_atividade;
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.9.JPG)
	select q1.fk_pessoas_aluno as id_aluno,q2.fk_pessoas_familiares as id_familiar from quadro_familiar as q1
	join quadro_familiar as q2 on (q1.id=q2.id);
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/4-9.9.JPG)
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
	select nome as participantam_assistencia from pessoas p 
	join aluno a on (p.id=a.fk_pessoas) 
	join participantes pa on (a.matricula=pa.fk_aluno)
	where a.matricula in (select pa.fk_aluno from participantes);
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/1-9.10.JPG)
	select d.disciplina as disciplinas_alunos_dificuldade from disciplinas d 
	join dificuldades di on (d.id=di.fk_disciplinas)
	where d.id in (select di.fk_disciplinas from dificuldades);
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/2-9.10.JPG)
	select nome as familiar from pessoas where id not in (select fk_pessoas from aluno);
![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/imagens/3-9.10.JPG)
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

