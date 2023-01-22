-- popula "clientes"
insert into clientes (cpf, nome, endereco, dt_nasc, sexo)
    values ('19697764042', 'Leonardo Chapisco', 'Chapisco, SC', to_date('19/03/1988', 'dd/mm/yyyy'), 'M');
insert into clientes (cpf, nome, endereco, dt_nasc, sexo)
    values ('42440431010', 'Matheus Civilization', 'Sudoeste, DF', to_date('17/05/2001', 'dd/mm/yyyy'), 'M');
insert into clientes (cpf, nome, endereco, dt_nasc, sexo)
    values ('42440431020', 'Luis Sombreiro Shadow', 'Sudoeste, DF', to_date('13/04/1990', 'dd/mm/yyyy'), 'M');
insert into clientes (cpf, nome, endereco, dt_nasc, sexo)
    values ('42440431030', 'Cotejador Nascimento Sauro', 'Campinas, SP', to_date('10/05/2001', 'dd/mm/yyyy'), 'M');
insert into clientes (cpf, nome, endereco, dt_nasc, sexo)
    values ('42440431050', 'Gustavo Robocop Android', 'Sudoeste, DF', to_date('12/07/2002', 'dd/mm/yyyy'), 'M');

-- popula "vendedores"
insert into vendedores (matricula, nome, chefe)
    values ('42443', 'Vendedor B', null);
insert into vendedores (matricula, nome, chefe)
    values ('19697', 'Vendedor A', '42443');
insert into vendedores (matricula, nome, chefe)
    values ('42444', 'Vendedor C', '42443');
insert into vendedores (matricula, nome, chefe)
    values ('42446', 'Vendedor D', '42444');
insert into vendedores (matricula, nome, chefe)
    values ('42448', 'Vendedor E', null);

-- popula "produtos"
insert into produtos (codigo, nome, preco_de_lista)
    values (1, 'Filé de porco', 20.50);
insert into produtos (codigo, nome, preco_de_lista)
    values (2, 'Torresmo', 10.0);
insert into produtos (codigo, nome, preco_de_lista)
    values (3, 'Coxinha de porco', 5.0);
insert into produtos (codigo, nome, preco_de_lista)
    values (4, 'Pastel de porco', 6.50);
insert into produtos (codigo, nome, preco_de_lista)
    values (5, 'Pernil de porco', 40.0);

-- popula "notas_fiscais"
insert into notas_fiscais (numero, matricula, cpf, data_venda)
    values (1, '42443', '19697764042', to_date('01/01/2021', 'dd/mm/yyyy'));
insert into notas_fiscais (numero, matricula, cpf, data_venda)
    values (2, '19697', '19697764042', to_date('25/02/2021', 'dd/mm/yyyy'));
insert into notas_fiscais (numero, matricula, cpf, data_venda)
    values (3, '42443', '19697764042', to_date('30/03/2021', 'dd/mm/yyyy'));
insert into notas_fiscais (numero, matricula, cpf, data_venda)
    values (4, '42443', '42440431020', to_date('01/01/2020', 'dd/mm/yyyy'));
insert into notas_fiscais (numero, matricula, cpf, data_venda)
    values (5, '42446', '42440431030', to_date('25/02/2020', 'dd/mm/yyyy'));
insert into notas_fiscais (numero, matricula, cpf, data_venda)
    values (6, '42448', '42440431020', to_date('02/01/2020', 'dd/mm/yyyy'));

-- popula "itens_notas_fiscais"
insert into itens_notas_fiscais (numero, codigo_do_produto, quantidade)
    values (1, 1, 10);
insert into itens_notas_fiscais (numero, codigo_do_produto, quantidade)
    values (1, 2, 20);
insert into itens_notas_fiscais (numero, codigo_do_produto, quantidade)
    values (3, 3, 5);
insert into itens_notas_fiscais (numero, codigo_do_produto, quantidade)
    values (2, 4, 15);
insert into itens_notas_fiscais (numero, codigo_do_produto, quantidade)
    values (4, 3, 12);
insert into itens_notas_fiscais (numero, codigo_do_produto, quantidade)
    values (5, 3, 11);
insert into itens_notas_fiscais (numero, codigo_do_produto, quantidade)
    values (6, 2, 7);
        

