create table clientes
( 
    cpf varchar(11),
    nome varchar(255),
    endereco varchar(255),
    dt_nasc date,
    sexo char(1)
);

create table vendedores
(
  matricula varchar(5),
  nome varchar(255),
  pecentual_comissao decimal(10,2),
  data_admissao date,
  de_ferias char(1),
  bairro varchar(255),
  chefe varchar(5)
);

create table produtos 
(
  codigo int,
  nome varchar(45),
  embalagem varchar(45),
  tamanho varchar(45),
  sabor varchar(45),
  preco_de_lista varchar(45)
);

create table itens_notas_fiscais
(
  numero int,
  codigo_do_produto int,
  quantidade int,
  preco decimal(10,2)
);

create table notas_fiscais
(
  numero int,
  matricula varchar(45),
  cpf varchar(11),
  data_venda date,
  imposto decimal(10,2)
);

-- adiciona chaves primárias às tabelas que não referenciam outras tabelas
alter table notas_fiscais add constraint pk_notas_fiscais_numero primary key (numero);
alter table clientes add constraint pk_cliente_cpf primary key (cpf);
alter table vendedores add constraint pk_vendedores_matricula primary key (matricula);
alter table produtos add constraint pk_produtos_codigo primary key (codigo);

-- adiciona chaves estrangeiras à tabela "notas_fiscais"
alter table notas_fiscais add constraint fk_cliente_cpf foreign key (cpf) references clientes(cpf);
alter table notas_fiscais add constraint fk_vendedores_matricula foreign key (matricula) references vendedores(matricula);

-- adiciona chaves estrangeiras à tabela "itens_notas_fiscais"
alter table itens_notas_fiscais add constraint fk_notas_fiscais_numero foreign key (numero) references notas_fiscais(numero);
alter table itens_notas_fiscais add constraint fk_produtos_codigo foreign key (codigo_do_produto) references produtos(codigo);

-- adiciona chave primária composta à tabela "itens_notas_fiscais"
alter table itens_notas_fiscais add constraint pk_itens_notas_fiscais primary key (numero, codigo_do_produto);




  
