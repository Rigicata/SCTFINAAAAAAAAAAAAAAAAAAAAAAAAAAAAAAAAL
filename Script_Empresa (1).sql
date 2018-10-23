create database dbsct
default character set utf8
default collate= utf8_bin;

use dbsct;

create table empresa(
nome_empresa varchar(500) not null,
nome_fantasia  varchar(500) not null ,
endereco	 varchar(500) not null,
bairro	 	 varchar(500) not null,
complemento  varchar(500) ,
numero 		 varchar(500) not null,
cep 		 varchar(500) not null,
cidade		 varchar(500) not null,
estado 		 varchar(500)	 not null,
celular	     varchar(30)  not null,
telefone 	 varchar(30),
email 		 varchar(500) not null,
ramo_empresa varchar(500),
cnpj         varchar(20) not null primary key,
senha 	     varchar(8) not null
)default character set utf8
 default collate= utf8_bin; /*case sensitive */
 
 drop table empresa;
 
 insert into empresa (nome_empresa,nome_fantasia,endereco,bairro,complemento,numero,cep,cidade,estado,celular,
 telefone,email,ramo_empresa,cnpj,senha) values('BFN LTDA','Brasil Feliz de Novo','Rua Silveira Martins',
 'Sé','Proximo ao metrô da Sé','13','13.131-313','Salvador','Bahia',
 '(13) 1 1313-1313','(13) 1313-1313','BandoDeBurguesSafado@gmail.com','Valorizar Minorias','13.133.133/1313-13','131313');
 
 delete  from empresa where cnpj = '13.133.133/1313-13';
select*from contrato where idContrato= '1';
 
select * from empresa;

select * from mysql.user;

show tables; 

drop database dbsct;

update empresa set nome_empresa='nome 2' where cnpj= '13.133.133/1313-13';


