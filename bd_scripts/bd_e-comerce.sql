create table categoria (
	id int auto_increment primary key,
	categoria varchar(50)
);

create table produto (
	id int auto_increment primary key,
	nome varchar (50) not null,
	valor decimal(10,2) not null,
	foto varchar(50) not null,
	descricao text,
	categoria_id int not null
);

create table itens_pedido (
	id int auto_increment primary key,
    quantidade int not null,
    valor decimal(10,2) not null,
    dt_item datetime not null,
    produto_id int not null,
    pedido_id int not null
);

create table usuario(
	id int auto_increment primary key,
    login varchar(50) not null,
    senha varchar(150) not null,
    nome varchar(45) not null
);

create table pedido (
	id int auto_increment primary key,
    dt_pedido datetime,
    status_pd varchar(4),
    usuario_id int
);

create table endereco (
	id int auto_increment primary key,
    logradouro varchar(45),
    numero varchar(45),
    cidade varchar(45),
    cep varchar(45),
    complemento varchar(45),
    estado varchar(10),
    usuario_id int
);

