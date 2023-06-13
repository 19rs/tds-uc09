CREATE DATABASE TOKYO_2021 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE TOKYO_2021;

CREATE TABLE TB_ATHLETES(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- 11085
name VARCHAR(80), -- 35
noc VARCHAR(60), -- 34
discipline VARCHAR(60) -- 21
);

CREATE TABLE TB_COACHES(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- 394
name VARCHAR(80), -- 30
noc VARCHAR(60), -- 26
discipline VARCHAR(60), -- 17
event VARCHAR(25) -- 8
);

CREATE TABLE TB_ENTRIES_GENDER(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- 46
discipline VARCHAR(60), -- 21
female SMALLINT,
male SMALLINT,
total SMALLINT
);

CREATE TABLE TB_MEDALS(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ranking TINYINT,
team VARCHAR(80), -- 26
gold SMALLINT,
silver SMALLINT,
bronze SMALLINT,
total SMALLINT,
rank_by_total TINYINT
);

CREATE TABLE TB_TEAMS(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- 743
name VARCHAR(80), -- 34
discipline VARCHAR(60), -- 19
noc VARCHAR(80), -- 26
event VARCHAR(60) -- 32
);

-- 1. Quem são os técnicos (coaches) e atletas das equipes de Handball?
SELECT CONCAT('Técnico   -   ', name) as `Função  -   Nome` FROM TB_COACHES WHERE discipline = 'Handball'
UNION
SELECT CONCAT('Atleta   -   ', name) FROM TB_ATHLETES WHERE discipline = 'Handball';


/*
2. Quem são os técnicos (coaches) dos atletas da Austrália que receberam medalhas de Ouro?
3. Quais países tiveram mulheres conquistando medalhas de Ouro?
4. Quais atletas da Noruega receberam medalhas de Ouro ou Prata?
5. Quais atletas Brasileiros não receberam medalhas?
 
Acredito que não é possível responder essas perguntas por que não há relação dos medalhistas,
apenas o total de medalhas.

Acredito que seria possível se tivesse por exemplo, uma tabela com as colunas:
Evento, Medalhista de Ouro, Medalhista de Prata, Medalhista de Bronze

Onde as colunas medalhistas poderiam ser tanto atletas quanto times.
E para realizar consultas dos atletas que receberam medalhas em esportes em equipe
fariamos uma query relacionando o noc do atleta com o pais vencedor e a disciplina dos atletas com o evento da tabela

por exemplo essa com a relação dos eventos e os ganhadores das medalhas

CREATE TABLE TB_WINNERS(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
discipline VARCHAR(80),
gold INT,
silver INT,
bronze INT
);

caso houvesse uma coluna event na tabela atletas (Women - Men - Mixed Team)

ALTER TABLE TB_ATHLETES
ADD event VARCHAR(60);

poderiamos usar essa query para pegar os atletas que foram medalhistas de ouro pela equipe

select a.ID, a.name from tb_athletes a
inner join tb_teams t on t.name = a.noc and t.discipline = a.discipline and t.event = a.event
inner join tb_winners w on t.id = w.gold;


mas será que nesse exemplo não quebraria quando um atleta participasse de de eventos individuais e coletivos?
*/