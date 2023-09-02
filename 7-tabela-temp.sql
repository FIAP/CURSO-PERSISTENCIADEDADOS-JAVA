-- Crie uma tabela temporária para armazenar os dados temporariamente
CREATE TEMP TABLE temp_precos (
    categoria VARCHAR(100),
    preco NUMERIC(10, 2)
);

-- Insira dados temporários na tabela temporária
INSERT INTO temp_precos (categoria, preco)
VALUES ('Eletrônicos', 500.00),
       ('Roupas', 75.50),
       ('Eletrônicos', 800.00),
       ('Roupas', 60.00),
       ('Livros', 25.99);

-- Calcule a média de preços por categoria a partir da tabela temporária
SELECT categoria, AVG(preco) AS media_preco
FROM temp_precos
GROUP BY categoria;

-- Drop a tabela temporária quando não for mais necessária
DROP TABLE temp_precos;
