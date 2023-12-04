CREATE DATABASE db_ecommerce

USE db_ecommerce;

CREATE TABLE tb_ecommerce (
     id bigint AUTO_INCREMENT PRIMARY KEY,
    Nome_produto varchar(255) NOT NULL,
    Cor varchar(255) NOT NULL,
    Preco decimal(6, 2) NOT NULL,
    Tempo_em_estoque varchar(255),
    Marca varchar(255) 
);

INSERT INTO tb_ecommerce(Nome_produto, Cor, Preco, Tempo_em_estoque, Marca) 
VALUES ('Jaqueta', 'Preta', 700.00, '1 ano', 'Hollister'),
       ('Tênis', 'Preto', 200.00, '2 meses', 'Adidas'),
       ('Tênis', 'Vermelho', 500.00, '2 meses', 'Nike'),
       ('Calça', 'Preta', 600.00, '3 semanas', 'Nike'),
       ('Camiseta Polo', 'Verde', 800.00, '2 semanas', 'Lacoste'),
       ('Par de meias', 'Preta', 52.00, '1 mês', 'Blunt');
       
       SELECT * FROM tb_ecommerce WHERE Preco > 500.00;

       SELECT * FROM tb_ecommerce WHERE Preco < 500.00;
