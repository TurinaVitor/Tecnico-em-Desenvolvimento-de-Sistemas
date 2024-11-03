create database fastfood;
use fastfood;

create table Estoque(
id INT PRIMARY KEY auto_increment,
Codigo int,
Nome varchar(100),
Categoria varchar(50),
Valor decimal(10,2),
Quantidade INT,
Descricao varchar(300),
DataModificacao timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
CaminhoImagem varchar(100)
);

create table usuario(
codigo int not null primary key auto_increment,
nome varchar(80),
cpf varchar(15),
email varchar(80) ,
telefone varchar(15),
funcao varchar(140), 
usuario varchar(30), 
senha varchar(15)
);

create table Carrinho(
id INT PRIMARY KEY auto_increment,
idLanche INT,
idUsuario INT, 
foreign key (idLanche) references Estoque(id),
foreign key (idUsuario) references usuario(codigo),
Quantidade INT,
Nome varchar(100),
Valor decimal(10,2),
ValorDeCada decimal(10,2),
Processamento int(2),
NumeroPedido int,
MetodoPagamento varchar(50)
);
    
create table perfil(
codigo int not null primary key auto_increment,
    nome varchar(80)
);

INSERT INTO usuario (nome, cpf, email, telefone, funcao, usuario, senha)
VALUES ('Rodrigo Guerreiro', '123.456.789-02', 'rodrigo@email.com', '(11) 3215-5123', 'administrador', 'GuerreiroADM', '123456789'),
('Rodrigo Guerreiro', '233.466.612-30', 'rodrigoguerreiro@email.com', '(11) 5312-5123', 'vendedor', 'GuerreiroVENDEDOR', '123456789'),
('Rodrigo Guerreiro', '723.125.732-21', 'guerreiro@email.com', '(11) 1267-1236', 'cliente', 'Guerreiro', '123456789');

select * from Carrinho;

select * from Estoque;

select * from usuario;

select * from perfil;

drop database fastfood;
