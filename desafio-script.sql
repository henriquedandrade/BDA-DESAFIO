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

insert into cliente (nome, email, fkindicado, logradouro, bairro, numero) values
('joão silva', 'joao.silva@email.com', null, 'rua a', 'centro', 100),
('maria oliveira', 'maria.oliveira@email.com', 1, 'rua b', 'centro', 200),
('carlos pereira', 'carlos.pereira@email.com', 1, 'rua c', 'bairro novo', 300),
('ana costa', 'ana.costa@email.com', 2, 'rua d', 'bairro velho', 400),
('lucas almeida', 'lucas.almeida@email.com', 3, 'rua e', 'jardim', 500),
('julia santos', 'julia.santos@email.com', null, 'rua f', 'centro', 600),
('pedro lima', 'pedro.lima@email.com', 5, 'rua g', 'bairro alto', 700);

insert into venda (total, dtvenda, fkcliente) values
(150.00, '2023-10-01', 1),
(250.50, '2023-10-02', 2),
(300.00, '2023-10-03', 3),
(450.75, '2023-10-04', 4),
(600.20, '2023-10-05', 5),
(120.00, '2023-10-06', 6),
(320.50, '2023-10-07', 7);

insert into produto (nome, descricao, preco) values
('produto a', 'descrição do produto a', 25.50),
('produto b', 'descrição do produto b', 40.00),
('produto c', 'descrição do produto c', 15.75),
('produto d', 'descrição do produto d', 30.00),
('produto e', 'descrição do produto e', 22.10),
('produto f', 'descrição do produto f', 50.00),
('produto g', 'descrição do produto g', 80.00);

insert into pedido (fkvenda, fkproduto, qtdproduto, desconto) values
(1, 1, 2, 5.00),
(1, 2, 1, 0.00),
(2, 3, 3, 10.00),
(2, 4, 2, 0.00),
(3, 5, 1, 2.50),
(4, 6, 5, 15.00),
(5, 7, 1, 0.00);




