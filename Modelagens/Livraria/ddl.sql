create database sistemalivraria;
use sistemalivraria;

create table tb_endereco (
	id_endereco		int primary key auto_increment,
    fk_endereco		int,
	nm_rua			varchar(50),
    nm_bairro		varchar(50),
    ds_numero		varchar(10),
    ds_cep			varchar(15),
    ds_complemento 	varchar(50),
    foreign key (fk_endereco) references tb_cliente (id_cliente)
);

create table tb_cliente (
	id_cliente			int primary key auto_increment,
    fk_funcionario		int,
    nm_cliente			varchar(50),
    dt_nascimento		date,
    ds_telefone			varchar(15),
    ds_email			varchar(30),
    ds_cpf				varchar(20),
    foreign key (fk_funcionario) references tb_funcionario (id_funcionario)
);


create table tb_funcionario (
	id_funcionario 			int primary key auto_increment,
    fk_departamento			int,
    nm_funcionario 			varchar(40),
    ds_cpf					varchar(20),
    ds_acesso				varchar(20),
    ds_email				varchar(25),
    foreign key (fk_departamento) references tb_departamento (id_departamento)
);

create table tb_departamento (
	id_departamento 	int primary key auto_increment,
	nm_departamento		varchar(30)
);

create table tb_genero (
	id_genero		int primary key auto_increment,
    nm_genero		varchar(20)
);

create table tb_livro (
	id_livro			int primary key auto_increment,
	nm_livro			varchar(50),
    qt_livro			int,
    vl_livro			decimal(10,2),
    qt_paginas			int,
    nm_editora			varchar(15),
    img_capa			varchar(100),
    ds_qrcode			varchar(50),
    ds_livro			varchar(500),
    ds_avaliação		varchar(5)
);
drop table tb_livro;


create table tb_livro_genero (
	id_livro_genero		int primary key auto_increment,
	fk_livro	int,
    fk_genero	int,
    foreign key (fk_livro) references tb_livro (id_livro),
    foreign key (fk_genero) references tb_genero (id_genero)
);


create table tb_item_pedido (
	id_item_pedido int primary key auto_increment,
	fk_pedido	int,
    fk_livro	int,
    foreign key (fk_pedido) references tb_pedido (id_pedido),
    foreign key (fk_livro) references tb_livro (id_livro)
);
select * from tb_item_pedido;

create table tb_pedido (
	id_pedido		int primary key auto_increment,
    fk_cliente		int,
    ds_total		varchar(30),
    ds_notafiscal	varchar(100),
	foreign key (fk_cliente) references tb_cliente (id_cliente)
);


