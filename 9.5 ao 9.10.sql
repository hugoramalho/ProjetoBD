/*9.5 ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)*/
update contatos set descricao_contato='marcio@live.com' where descricao_contato='marcio@gmail.com';
update documentos set numero_documento='111111' where numero_documento='098765';
update renda_familiar set renda_mensal=500 where id=5;
delete from parentesco where grau_parentesco = 'TIO'
delete from interessados_participar where fk_aluno = 20151010;
delete from disciplinas where disciplina = 'CALCULO 2';
/*9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)*/
select nome as aluno_intessado_participar from pessoas p join aluno a on (p.id=a.fk_pessoas) 
join interessados_participar i on (a.matricula=i.fk_aluno) order by nome;
select b.nome as bairro,c.nome as cidade,e.estado as estado from bairro b join cidade c on (b.fk_cidade=c.id) 
join estado e on (e.id=c.fk_estado) order by b.nome;
select fk_aluno,disciplina,descricao as dificuldade from dificuldades di 
join disciplinas d on (di.fk_disciplinas=d.id)
join detalhamento_dificuldades de on (di.fk_detalhamento_dificuldades=de.id) order by fk_aluno;
select fk_aluno as matricula,d.nome as dia_semana,descricao_atividade as atividade from evasao_quadro_atividades e
join dia_semana d on (e.fk_dia_semana=d.id) join detalhamento_atividade de on (e.fk_detalhamento_atividade=de.id)
order by d.nome desc;
/*9.7 CONSULTAS COM GROUP BY (Mínimo 5)*/
select t.tipo,count(fk_tipo_auxilio) as qtd_modalidades from tipo_auxilio t 
join modalidade_auxilios m on (t.id=m.fk_tipo_auxilio)
group by  t.tipo,m.fk_tipo_auxilio;
select grau_parentesco,count(fk_grau_parentesco) from parentesco p
join quadro_familiar q on (p.id=q.fk_grau_parentesco)
group by grau_parentesco;
select grau_parentesco,max(renda_mensal) from parentesco p
join quadro_familiar q on (p.id=q.fk_grau_parentesco)
join renda_familiar r on (q.fk_pessoas_familiares=r.fk_pessoas)
group by grau_parentesco;
select tipo_de_atividade,descricao_atividade  from detalhamento_atividade d
join atividades a on (a.id=d.fk_atividades)
group by tipo_de_atividade,descricao_atividade;
select tipo_documentos,count(fk_tipo_documentos) from documentos d
join tipo_documentos t on (d.fk_tipo_documentos=t.id)
group by fk_tipo_documentos,tipo_documentos;
/*9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)*/
select fk_aluno as matricula,disciplina from dificuldades di 
right join disciplinas d on (di.fk_disciplinas=d.id);
select nome,matricula from aluno a right join pessoas p on (a.fk_pessoas=p.id);
select distinct tipo_documentos,fk_tipo_documentos as tipo_documento from tipo_documentos t
left join documentos d  on (t.id=d.fk_tipo_documentos) order by tipo_documento;
select distinct grau_parentesco,fk_grau_parentesco from parentesco p 
left join quadro_familiar q on (p.id=q.fk_grau_parentesco) order by fk_grau_parentesco;
/*9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)*/
create view tipo_e_descricao as select tipo,descricao from modalidade_auxilios;
create view renda_entre_mil_e_dois_mil as select nome,renda_mensal from renda_familiar r
join pessoas p on (p.id=r.fk_pessoas) where renda_mensal>='1000' and renda_mensal<='2000';
create view atividade_e_horario as select descricao_atividade,fk_horario_ini,fk_horario_fim 
from detalhamento_atividade;
select q1.fk_pessoas_aluno as id_aluno,q2.fk_pessoas_familiares as id_familiar from quadro_familiar as q1
join quadro_familiar as q2 on (q1.id=q2.id);
/*9.10 SUBCONSULTAS (Mínimo 3)*/
select nome as participantam_assistencia from pessoas p 
join aluno a on (p.id=a.fk_pessoas) 
join participantes pa on (a.matricula=pa.fk_aluno)
where a.matricula in (select pa.fk_aluno from participantes);
select d.disciplina as disciplinas_alunos_dificuldade from disciplinas d 
join dificuldades di on (d.id=di.fk_disciplinas)
where d.id in (select di.fk_disciplinas from dificuldades);
select nome as familiar from pessoas where id not in (select fk_pessoas from aluno);
