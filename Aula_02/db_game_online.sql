CREATE DATABASE db_game_online;

USE db_game_online;

CREATE TABLE  tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    nacionalidade VARCHAR(50),
    habilidade_especial VARCHAR(100),
    equipamento VARCHAR(100)
);
    
CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(50) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    mana INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);
    

INSERT INTO tb_classes (nome_classe, nacionalidade, habilidade_especial, equipamento)
VALUES 
    ('Guerreiro', 'Japão', 'Soco brutal', 'Cajado'),
    ('Mago', 'Inglaterra', 'Rapid Flash', 'Cajado'),
    ('Arqueiro', 'Itália', 'Killer Ash', 'Arco e Flecha'),
    ('Pirata', 'Cuba', 'Furto Esperto', 'Pistola'),
    ('Ninja', 'Coreia do Sul', 'Ataque Espadachin', 'Espada');


INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, mana, id_classe)
VALUES 
    ('Ralf', 2100, 1500, 50, 1),
    ('Leona Bryan', 80, 2000, 120, 2),
    ('Lurk Caelf', 3100, 1800, 70, 3),
    ('Demon D', 170, 80, 100, 4),
    ('Joe Killer', 900, 855, 540, 5),
    ('Guy Roger', 1110, 558, 350, 1),
    ('Magic Flash', 960, 860, 1150, 2),
    ('Ark Height', 5510, 1900, 180, 3);
    

SELECT *
FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT *
FROM tb_personagens
WHERE poder_ataque < 2000;

SELECT *
FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagens
WHERE nome_personagem LIKE '%C%';

SELECT *
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT *
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = 'Ninja';
