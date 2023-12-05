CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);


CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    preco DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
    ('Clássicas', 'Pizzas tradicionais'),
    ('Especiais', 'Pizzas exclusivas'),
    ('Vegetarianas', 'Pizzas sem carne'),
    ('Doces', 'Pizzas com sabores doces'),
    ('Veganas', 'Pizzas sem ingredientes de origem animal');

INSERT INTO tb_pizzas (nome_pizza, descricao, preco, id_categoria)
VALUES 
    ('Margherita', 'Molho de tomate, mussarela, manjericão', 45.99, 1),
    ('Calabresa', 'Molho de tomate, calabresa, cebola', 55.50, 1),
    ('Quatro Queijos', 'Molho de tomate, mussarela, provolone, parmesão, gorgonzola', 39.00, 1),
    ('Especial da Casa', 'Molho de tomate, presunto, bacon, champignon, milho', 32.50, 2),
    ('Vegetariana', 'Molho de tomate, pimentão, cebola, azeitona, tomate, champignon', 27.50, 3),
    ('Chocolate com Morango', 'Chocolate, morango', 22.99, 4),
    ('Frango com Catupiry', 'Molho de tomate, frango desfiado, catupiry', 29.50, 2),
    ('Vegana Especial', 'Molho de tomate, cogumelos, pimentão, cebola roxa, rúcula', 31.00, 5);
    

SELECT *
FROM tb_pizzas
WHERE preco > 45.00;

SELECT *
FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;


SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT *
FROM tb_pizzas
WHERE nome_pizza LIKE '%M%';

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doces';
