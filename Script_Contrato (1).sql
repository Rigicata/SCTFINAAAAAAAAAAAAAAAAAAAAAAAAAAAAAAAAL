create table contrato(

idContrato varchar(300) primary key,

cnpj_Empresa varchar(20),
cpf_Funcionario varchar(20),

dia_Inicial varchar(11),
dia_Final varchar(11),
horario_Inicial varchar(7),
horario_Final varchar(7),
localizacao varchar(100),
tipo varchar (100),
clausula varchar(5000),
funcionario_Status varchar (100),

foreign key (cnpj_Empresa) references empresa (cnpj),
foreign key (cpf_Funcionario) references funcionario (cpf)




);
drop table contrato;
select * from contrato;
show tables;

set foreign_key_checks=0;
/*CONSTRUÇÃO,MANUTENÇÃO,MONTAGEM*/
insert into contrato 
values 
('0','13.133.133/1313-13','000.000.000-00','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','CONSTRUÇÃO','1.AAA 2.BBB 3.CCC','EM ANDAMENTO'),
('1','13.133.133/1313-13','111.111.111-11','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','MANUTENÇÃO','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),
('2','13.133.133/1313-13','111.111.111-11','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','CONSTRUÇÃO','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),
('3','13.133.133/1313-13','111.111.111-11','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','MONTAGEM','1.AAA 2.BBB 3.CCC','EM ANDAMENTO'),
('4','13.133.133/1313-13','222.222.222-22','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','MONTAGEM','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),
('5','13.133.133/1313-13','333.333.333-33','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','CONSTRUÇÃO','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),
('6','13.133.133/1313-13','444.444.444-44','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','MONTAGEM','1.AAA 2.BBB 3.CCC','EM ANDAMENTO');



select nome_funcionario,cpf_Funcionario,cnpj_Empresa,idContrato,dia_Inicial,dia_Final,
horario_Inicial,horario_Final,localizacao,tipo,clausula,Funcionario_Status
from funcionario inner join contrato  on cpf=cpf_Funcionario and Funcionario_Status = 'EM ANDAMENTO';


select nome_funcionario,cpf_Funcionario,cnpj_Empresa,idContrato,dia_Inicial,dia_Final,
horario_Inicial,horario_Final,localizacao,tipo,clausula,Funcionario_Status
from funcionario inner join contrato  on cpf=cpf_Funcionario and Funcionario_Status = 'CONCLUÍDO' ;



select dia_Inicial,dia_Final from funcionario inner join contrato  on cpf=cpf_Funcionario where idContrato = '2' ;



select nome_funcionario,cpf_Funcionario,cnpj_Empresa,idContrato,dia_Inicial,dia_Final,
horario_Inicial,horario_Final,localizacao,tipo,clausula,Funcionario_Status
from funcionario inner join contrato on  cpf=cpf_Funcionario and Funcionario_Status = 'CONCLUÍDO' where cpf_Funcionario = '111.111.111-11';


delete  from contrato where idContrato = '1';


update contrato set Funcionario_Status = 'EM ANDAMENTO' where  cpf_Funcionario = '111.111.111-11';

insert into contrato 
values 
('1','13.133.133/1313-13','000.000.000-00','15/10/2018','16/10/2018','10:00','12:00',
'Salvador em tal lugar','CONSTRUÇÃO','1.AAA 2.BBB 3.CCC','EM ANDAMENTO');

show tables;

select * from contrato;
select * from empresa;
select * from funcionario;






