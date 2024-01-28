CREATE TABLE tb_pessoa (
    id bigint,
    nome varchar(50),
    idade INTEGER,
    sexo varchar(1)
);

CREATE TABLE tb_pessoa (
    id bigint NOT NULL,
    nome VARCHAR(50) NOT NULL,
    idade INTEGER constraint check_idade CHECK (idade > 0 AND idade <120),
    sexo VARCHAR(1) NOT NULL
);

DROP TABLE tb_pessoa;

ALTER TABLE tb_pessoa
ADD COLUMN sexo BOOLEAN;

ALTER TABLE tb_pessoa
ADD COLUMN nome_m VARCHAR(50);

ALTER TABLE tb_pessoa
RENAME COLUMN nome_m TO nome_mae;

ALTER TABLE tb_pessoa
ALTER COLUMN nome_mae TYPE VARCHAR(30);

ALTER TABLE tb_pessoa
ALTER COLUMN nome_mae TYPE CHARACTER;

ALTER TABLE tb_pessoa 
ALTER COLUMN nome_mae 
SET DEFAULT 'NULO';

ALTER TABLE tb_pessoa 
ALTER COLUMN nome_mae 
DROP DEFAULT;

ALTER TABLE tb_pessoa 
ALTER COLUMN nome_mae 
SET NOT NULL;

ALTER TABLE tb_pessoa 
ALTER COLUMN nome_mae 
DROP NOT NULL;

ALTER TABLE tb_pessoa 
ADD CONSTRAINT check_idade 
CHECK (
	idade > 0
	and idade <100
);

ALTER TABLE tb_pessoa_1 
RENAME TO tb_pessoa;

ALTER TABLE tb_pessoa
drop column sexo;

alter table tb_pessoa
ADD COLUMN SEXO VARCHAR(1);

truncate tb_pessoa;

drop table tb_pessoa;


select * from tb_pessoa;

insert into tb_pessoa (id, nome, idade, sexo) 
values (1,'Luana', 30, 'F');
insert into tb_pessoa (id, nome, idade, sexo) 
values (2,'Rodrigo', 36, 'M');
insert into tb_pessoa (id, nome, idade, sexo) 
values (2,'Carlos', 0, 'M');
insert into tb_pessoa (id, nome, idade, sexo) 
values (2,'Carlos', 200, null);
insert into tb_pessoa (id, nome, idade, sexo) 
values (2,'Carlos', 10, 'M');
insert into tb_pessoa (id, nome, idade, sexo) 
values (4,'Rodrigo Pires', 36, 'M');
insert into tb_pessoa (id, nome, idade, sexo) 
values (5,'Rod', 36, 'M');
insert into tb_pessoa (id, nome, idade, sexo) 
values (6,'Rod', 40, 'M');

update tb_pessoa set nome = 'Luana';
update tb_pessoa set nome = 'Rodrigo' where id = 1;
update tb_pessoa set nome = 'Rodrigo', idade = 38 where id = 1;

delete from tb_pessoa;

delete from tb_pessoa where id = 1;


select * from tb_pessoa where nome like('Rodrigo');
select * from tb_pessoa where nome like('R%');
select * from tb_pessoa where nome like('%s');
select * from tb_pessoa where nome like('%dri%');
select * from tb_pessoa where nome like('_o_');
select * from tb_pessoa where nome not like('R%');
select nome from tb_pessoa;
select upper(nome) from tb_pessoa;
select * from tb_pessoa where idade >= 10 and idade < 39;
select * from tb_pessoa where idade >= 10 or nome like('Rodrigo');

select * from tb_pessoa order by nome;
select * from tb_pessoa order by nome asc;
select * from tb_pessoa order by nome desc;

select distinct(nome) from tb_pessoa;

select * from tb_pessoa where nome in ('Rodrigo', 'Luana');

select * from tb_pessoa where idade between 10 and 30;