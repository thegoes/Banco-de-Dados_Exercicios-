CREATE DATABASE tb_escola;

USE tb_escola;

CREATE TABLE tb_estudantes (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255) NOT NULL,
    idade int,
    serie varchar(50),
    nota decimal(4, 2),
    endereco varchar(255)
);

INSERT INTO tb_estudantes(nome, idade, serie, nota, endereco) 
VALUES ('Maria', 17, '3º Ano', 8.5, 'Rua Augusta, 123'),
       ('João', 16, '2º Ano', 6.9, 'Rua Brasil, 456'),
       ('Pedro', 15, '1º Ano', 7.8, 'Rua Carvalho, 789'),
       ('Ana', 18, '3º Ano', 9.2, 'Rua Dinarmarca, 321'),
       ('Lucas', 14, '1º Ano', 6.5, 'Rua Europa, 654'),
       ('Mariana', 16, '2º Ano', 8.0, 'Rua Ferrari, 987'),
       ('Carlos', 17, '3º Ano', 6.2, 'Rua Gucci, 741'),
       ('Luiza', 15, '1º Ano', 7.5, 'Rua Hilário, 852');

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;
