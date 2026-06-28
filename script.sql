 create database projeto_sql_ecommerce;
 use projeto_sql_ecommerce;
 
 create table Clientes(
	Id_Cliente int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null,
    data_cadastro timestamp default current_timestamp    
    -- default diz se o usuario nao adicionar nenhum dado, voce deve preencher automaticamente
    -- current diz pegue o horario e data exata da aplicação
 );
 
 
create table Produtos(
	id_Produto int auto_increment primary key,
    nome varchar(100) not null,
    categoria varchar(100) not null,
    preco decimal(10,2) not null,
    estoque int not null    
);


create table pedidos(
	id_Pedido int auto_increment primary key,
    id_Produto int not null,
    data_pedido timestamp default current_timestamp,
    status varchar(100) not null,
    valor_total decimal(10,2) not null,
    -- digo ao banco que a tabela id produto pertence a tabela produto
    foreign key (id_Produto) references Produtos(id_Produto)
    );
 
 -- realizando um mudança na tabela pedidos
 alter table pedidos add column id_cliente int;
    
    
    
create table itens_pedidos(
	id_itens int auto_increment primary key,
    id_Pedido int not null,
    id_Produto int not null,
    quantidade int not null,
    preco_unitario decimal(10,2),
     -- digo ao banco que a tabela id produto pertence a tabela produto
    foreign key (id_Pedido) references pedidos(id_Pedido),
    foreign key (id_Produto) references Produtos(id_Produto)    
);
 


-- Realizando consulta da data_cadastro
 select nome, data_cadastro
from clientes
where data_cadastro <= '2026-06-26'
and exists (select * from clientes where data_cadastro > '2026-06-24');

-- Realizando consulta do produto mais vendido
select
	p.nome,
    sum(i.quantidade) as total_vendas
from
	produtos p
inner join
	itens_pedidos i on p.id_produto = i.id_produto
group by 
	p.nome
order by total_vendas desc
limit 3;

-- consulta de clientes que nao realizaram a primeira compra
select 
	c.id_cliente,
    c.nome
from 
	clientes c
left join
	pedidos p on c.id_cliente = p.id_cliente
where
	p.id_pedido is null;
    
select * from pedidos
