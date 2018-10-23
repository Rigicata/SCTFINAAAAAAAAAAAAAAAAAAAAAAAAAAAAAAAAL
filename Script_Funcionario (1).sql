create table funcionario(
nome_funcionario varchar(500) not null,
endereco	 varchar(500) not null,
bairro	 	 varchar(500) not null,
complemento  varchar(500) ,
numero 		 varchar(500) not null,
cep 		 varchar(500) not null,
cidade		 varchar(500) not null,
estado 		 varchar(500)	 not null,
celular	     varchar(20)  not null,
telefone 	 varchar(20),
email 		 varchar(500) not null,
nascimento varchar(11) not null,
cpf        varchar(20) not null primary key,
rg         varchar(20) not null unique,
sexo       varchar(20) not null,
senha 	     varchar(15) not null
)default character set utf8
 default collate= utf8_bin; /*case sensitive */
 
 drop table funcionario;
 
 
 insert into funcionario(nome_funcionario,endereco,bairro,complemento,numero,cep,cidade,estado,celular,
 telefone,email,nascimento,cpf,rg,sexo,senha) 
 values 
 ('Machado Teixeira','Rua tal 0','bonf 0','complemento tal 0 ','00','00.000-000','Salvador',
 'Bahia','(00) 0 0000-0000','(00) 0000-0000','emailetal0@gmail.com','00/00/0000','000.000.000-00',
 '00.000.000-00','M','000'),
 ('Giovana Araújo','Rua tal 1','bonf 1','complemento tal 1','11','11.111-111','Salvador',
 'Bahia','(11) 1 1111-1111','(11) 1111-1111','emailetal1@gmail.com','11/11/1111','111.111.111-11',
 '11.111.111-11','F','111'),
('Helena Costa','Rua tal 2','bonf 2','complemento tal 2','22','22.222-222','Salvador',
 'Bahia','(22) 2 2222-2222','(22) 2222-2222','emailetal2@gmail.com','22/22/2222','222.222.222-22',
 '22.222.222-22','F','222'),
 ('Lara Silva ','Rua tal 3','bonf 3','complemento tal 3','33','33.333-333','Salvador',
 'Bahia','(33) 3 3333-3333','(33) 3333-3333','emailetal3@gmail.com','33/33/3333','333.333.333-33',
 '33.333.333-33','F','333'),
('Lucas Amaral  ','Rua tal 4','bonf 4','complemento tal 4','44','44.444-444','Salvador',
 'Bahia','(44) 4 4444-4444','(44) 4444-4444','emailetal4@gmail.com','44/44/4444','444.444.444-44',
 '44.444.444-44','M','333');
 
 select *from funcionario;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'cima';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'cimatec';
CREATE USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'a';

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY ''; flush privileges;


select*from funcionario where cpf= '000.000.000-00' and senha='000';

select * from funcionario;
select*from funcionario where cpf= '000.000.000-00';

select * from mysql.user;
 
 delete from funcionario where cpf = '888.888.888-88';
 

 