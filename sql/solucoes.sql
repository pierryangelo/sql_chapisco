-- ITEM 1
SELECT v1.nome AS vendedor, v2.nome AS chefe 
    FROM vendedores v1 
    LEFT OUTER JOIN vendedores v2
    ON v1.chefe = v2.matricula;

-- ITEM 2
UPDATE itens_notas_fiscais inf
   SET inf.preco = CAST(inf.quantidade AS DECIMAL(10,2)) * 
     (SELECT p.preco_de_lista FROM produtos p WHERE p.codigo = inf.codigo_do_produto);
COMMIT; 

-- obs1:
-- é necessário converter o integer para decimal com a função "cast()", porém se você fez toda a instrução
-- e esqueceu somente a função de conversão de tipos, considere sua resposta como correta;

-- obs2:
-- o commit é necessário para manter o resultado da operação no SQL Fiddle, o "item 4" depende da
-- execução dessas instruções;

-- ITEM 3
SELECT p.nome FROM produtos p
WHERE NOT EXISTS 
    (SELECT 1 FROM itens_notas_fiscais inf 
    WHERE EXISTS 
        (SELECT 1 FROM notas_fiscais nf 
        WHERE EXISTS
            (SELECT 1 FROM clientes c 
                WHERE p.codigo = inf.codigo_do_produto
                AND inf.numero = nf.numero
                AND nf.cpf = c.cpf
                AND c.nome = 'Leonardo Chapisco'
            )
        )
    )

-- ITEM 4
SELECT c.nome, sum(inf.preco) AS total FROM itens_notas_fiscais inf
    INNER JOIN notas_fiscais nf
        ON inf.numero = nf.numero 
    INNER JOIN clientes c
        ON nf.cpf = c.cpf
    GROUP BY c.nome
    HAVING sum(inf.preco) > 100
    ORDER BY total;




