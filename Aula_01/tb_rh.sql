CREATE DATABASE db_RH

USE db_rh; 

CREATE TABLE tb_rh (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    Nome_funcionario varchar(255) NOT NULL,
    Cargo varchar(255) NOT NULL,
    Salario decimal(6, 2) NOT NULL,
    Escolaridade varchar(255),
    Tempo_de_empresa int
);

INSERT INTO tb_rh(Nome_funcionario, Cargo, Salario, Escolaridade, Tempo_de_empresa) 
VALUES ('Renato', 'CEO', 5000.00, 'Superior completo', 10),
       ('João', 'Analista de rede', 3000.00, 'Superior completo', 5),
       ('Felipe', 'Social Media', 1000.00, 'Superior completo', 2),
       ('Carlos', 'Vendedor', 1800.00, 'Ensino Médio Completo', 1),
       ('Luiz', 'Estagiario', 1200.00, 'Ensino Superior incompleto', 1);
       
       SELECT * FROM tb_rh; 

SELECT * FROM tb_rh WHERE Salario > 2000.00;

SELECT * FROM tb_rh WHERE Salario < 2000.00;
