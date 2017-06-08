# TRABALHO 01 - EVASÃO E AUTOMAÇÃO ASSISTÊNCIA ESTUDANTIL
Trabalho com objetivo de avaliação da disciplina de banco de dados 1, do Insitituto Federal do Espirito Santo - Campus Serra.

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Antonio Carlos Lemos Junior: <br>
Landerson Morais Alexandre: <br>
Lucas Oliveira Garcia: <br>
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

![Alt text](https://github.com/projetobdifes01/ProjetoBD/blob/master/tela%201.PNG?raw=true)

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
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
   	TABELA ALUNO - Tabela que armazena o aluno e matricula
	( 
		MATRICULA - Armazena a Matricula do Aluno da Instituição
		NOME Armazena o Nome do Aluno Matriculado Na Instituição
	)
	TABELA  TIPO_DOCUMENTOS - Tabela que armazena os tipos de documentos em geral.
	(
		ID - Armazena o ID para futuras seleções
		TIPO_DOCUMENTO - Armazena os tipos de documento como ex: Identidade, CPF
	)
	TABELA  DOCUMENTOS - Tabela que Armazena o núemro do documento fornecido
	(
		ID -  Armazena o ID para futuras seleções
		NUMERO_DOCUMENTO - Armazena o número do documento informado pelo usuario
		FK_DOCUMENTACAO - Armazena dados para futuras seleções
		FK_ALUNO - Armazena dados para futuras seleções
	)
	TABELA  DATA_NASCIMENTO - Tabela que armazena datas de nascimento
	(
		ID - Armazena dados para futuras seleções
		DATA_NASCIMENTO - Armazena a data de nascimento do aluno
		FK_ALUNO - Armazena dados para futuras seleções
	);<br>
	TABELA  CONTATOS - Tabela que armazena contatos em geral.
	(
		CODIGO - Armazena dados para futuras seleções
		DESCRICAO_CONTATO - Armaenza a descrição do contado.
	)
	TABELA  TIPO_CONTATO  - Tabela que armazena os tipos de contatos.
	(
		CODIGO - Armazena dados para futuras seleções
		DESCRICAO VARCHAR(60) - Armazena E-mails, Telefones etc.
	)
	TABELA  FAMILIARES_ALUNO Tabela que armazena os familiares do aluno -- entrara tabela pessoas 
	(
		ID - Armazena dados para futuras seleções
		NOME_FAMILIAR - Armazena o nome do familiar do aluno
		GRAU_PARENTESCO - Armazena o grau parentesco
		VINCULO_EMPREGATICIO - Armazena se ha ou não trabalho.
		RENDA_MENSAL - Armazena Salario Mensal do Referido.
		IDENTIDADE - Armazena o  documento de identidade.
		FK_ALUNO - Armazena dados para futuras seleções
	)
	TABELA  ESTADO
	(
		CODIGO_ESTADO - Armazena dados para futuras seleções
		NOME_ESTADO - Armazena o nome do estado.
	)
	TABELA  CIDADE
	(
		CODIGO_CIDADE - Armazena dados para futuras seleções
		CIDADE Armazena o nome da cidade.
		CODIGO_ESTADO - Armazena dados para futuras seleções
	)
	TABELA  BAIRRO
	(
		CODIGO_BAIRRO - Armazena dados para futuras seleções
		NOME_BAIRRO Armazena o nome do Bairro.
		CODIGO_CIDADE - Armazena dados para futuras seleções
	)
	TABELA  RUA 
	(
		CODIGO_RUA - Armazena dados para futuras seleções
		NOME_RUA - Armazena o nome da rua.
		CODIGO_BAIRRO - Armazena dados para futuras seleções
	)
	TABELA  AUXILIO
	(
		CODIGO_AUXILIO - Armazena dados para futuras seleções
		MODALIDADE - Armazena as modalidades do auxilio: Ex Alimentação, transporte e didatico.
		FK_ALUNO - Armazena dados para futuras seleções
	)
	TABELA  TIPO_AUXILIO
	(
		ID - Armazena dados para futuras seleções
		TIPO Armazena os tipos de auxilios que foram descritos. 
	)
	TABELA  MODALIDADE_AUXILIOS
	(
		ID - Armazena dados para futuras seleções
		TIPO Armazena os subtipos de auxilios.
		DESCRICAO - Armazena a descrição de tais subtipos de auxilios. 
		FK_TIPO_AUXILIO - Armazena dados para futuras seleções
	)
	TABELA  DOCUMENTOS_COMPROBATORIOS
	(
		MATRICULA Armazena a Matricula do Aluno da Instituição
		DOCUMENTACAO BLOB - Armaenza os anexos de documentações em pdf.
	)
	TABELA  EVASAO_QUADRO_DIFICULDADES
	(
		MATRICULA - Armazena a Matricula do Aluno da Instituição,
		HORA_INICIO - Armazena a Hora de Inicio/ Fim de Tal Atividade,
		HORA_FIM - Armazena a Hora de Inicio/ Fim de Tal Atividade,
		DIA_SEMANA - Armazena o dia da semana em que houve tal atividade,
		ATIVIDADE - Armazena atividaes que o aluno faz, Sera criada tabela de atividades 
	)
	TABELA  DISCIPLINAS
	(
		DISCPLINA - Armazena as discplinas que o aluno cursa. 
	)
	TABELA  EVASAO_DIFICULDADES
	(
		MATRICULA  - Armazena a Matricula do Aluno da Instituição,
		DISCIPLINA - Armazena as discplinas que o aluno cursa. 
		DIFICULDADES- Armazena dificuldades que o aluno possui. - Sera Criada Uma tabela de Dificuldades
	)
	TABELA  ALUNOS_INTERESSADOS_PARTICIPAR_ASSISTENCIA
	(
		MATRICULA  - Armazena a Matricula do Aluno da Instituição,
	)

	TABELA  ALUNOS_JA_PARTICIPANTES_ASSISTENCIA
	(
		MATRICULA  - Armazena a Matricula do Aluno da Instituição,
	)
	TABELA  ALUNOS_PENDENCIAS_DOCUMENTOS<br>
	(
		MATRICULA  - Armazena a Matricula do Aluno da Instituição,
		DOCUMENTO_PENDENTE - Armazena matriculas de alunos com pendencias  
	)


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
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam)

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
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

