create database projeto_final_jh


--criando as tabelas
create table carro(
	id SERIAL primary key,
	marca varchar(50),
	modelo varchar(50),
	ano varchar(50),
	preco float
);


create table clientes(
	id SERIAL primary key,
	nome varchar(50),
	email varchar(100),
	contato varchar(100)
	);


create table vendas(
	id SERIAL primary key,
	data_venda date,
	id_carro INT references carro(id) on delete cascade,
	id_clientes INT references clientes(id) on delete cascade,
	valor_final float
);


create table funcionarios(
	id SERIAL primary key,
	nome varchar(50),
	cargo varchar(50),
	contato varchar(100)
);


create table fornecedores(
	id SERIAL primary key,
	nome varchar(50),
	contato varchar(100),
	email varchar(100)
);


--selecionando as tabelas a serem exibidas
select * from carro

select * from clientes

select * from vendas

select * from funcionarios 

select * from fornecedores

---inserindo os dados nas tabelas 

insert into carro (id, marca, modelo, ano, preco) values (03, 'Suzuki', 'Capuccino', 1994, 97000);
insert into carro (id, marca, modelo, ano, preco) values (12, 'Mazda', 'RX8', 2005, 150000);
insert into carro (id, marca, modelo, ano, preco) values (46, 'Chevrolet', 'Monza', 1996, 12000);

insert into clientes (id, nome, email, contato) values (123, 'Claudio Ferreira', 'clferreira@gmail.com', '(83)99769-5576');
insert into clientes (id, nome, email, contato) values (124, 'José Carvalho', 'cjose@gmail.com', '(81)99873-5673');
insert into clientes (id, nome, email, contato) values (156, 'Pietro Conrado', 'pconrado@gmail.com', '(21)99823-1456');

insert into vendas (id, data_venda, id_carro, id_clientes, valor_final) values (1080, '2022-08-13', 03, 123, 97000);
insert into vendas (id, data_venda, id_carro, id_clientes, valor_final) values (1689, '2022-06-30', 46, 156, 12000);
insert into vendas (id, data_venda, id_carro, id_clientes, valor_final) values (2670, '2023-08-05', 12, 124, 150000);

insert into funcionarios (id, nome, cargo, contato) values (201, 'Carlos de Almeida', 'Vendedor', '(83)99864-5667');
insert into funcionarios (id, nome, cargo, contato) values (202, 'Julia Santos', 'Gerente', '(21)99788-0957');
insert into funcionarios (id, nome, cargo, contato) values (205, 'Pedro Campos', 'Manobrista', '(81)97689-9087');

insert into fornecedores (id, nome, contato, email) values (34765, 'kleber Justino', '(83)99089-65776', 'kjustino@gmail.com');
insert into fornecedores (id, nome, contato, email) values (90875, 'Junior Vieira', '(81)90896-7567', 'vieiraj@gmail.com');


--Realizaçao de join de carro e vendas
select
	c.id as id_carro,
	c.marca,
	c.modelo,
	c.ano,
	c.preco,
	v.data_venda,
	v.id_clientes,
	v.valor_final
from
	carro c
join
	vendas v on c.id = v.id_carro;
	

--Realizando join de carro, vendas e clientes
select
    c.id as id_carro,
    c.marca,
    c.modelo,
    c.ano,
    c.preco,
    cl.nome as nome_cliente,
    cl.email,
    cl.contato,
    v.data_venda,
    v.valor_final
from
    carro c
join
    vendas v on c.id = v.id_carro
join
    clientes cl on v.id_clientes = cl.id;

