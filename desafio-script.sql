create database cadastro;

use cadastro;

create table cliente(
idCliente int primary key auto_increment,
nome varchar(45),
email varchar(256),
fkIndicado int,
constraint fkClienteIndica foreign key (fkIndicado) references cliente(idCliente),
logradouro varchar(80),
bairro varchar(45),
numero int
);

create table venda(
idVenda int primary key auto_increment,
total float,
dtVenda date,
fkCliente int,
constraint fkVendaCliente foreign key (fkCliente) references cliente(idCliente)
);

create table produto(
idProduto int primary key auto_increment,
nome varchar(45),
descricao varchar(80),
preco float);

create table pedido(
fkVenda int,
fkProduto int,
qtdProduto int,
desconto float,
constraint pkComposta primary key (fkVenda, fkProduto)
);
