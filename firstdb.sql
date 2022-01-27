CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas (nome, nascimento) VALUES ('Plínio','1991-09-04');
INSERT INTO pessoas (nome, nascimento) VALUES ('Jéssica','1991-07-04');
INSERT INTO pessoas (nome, nascimento) VALUES ('Soraia','2021-12-18');
INSERT INTO pessoas (nome, nascimento) VALUES ('Guri','1991-09-16');
INSERT INTO pessoas (nome, nascimento) VALUES ('Maris','1992-10-28');

SELECT * FROM pessoas;

UPDATE pessoas SET nome='Plínio Almeida' WHERE id=1;
UPDATE pessoas SET nome='Jéssica Pereira' WHERE id=2;
UPDATE pessoas SET nome='Maria Lili Alice' WHERE id=3;
UPDATE pessoas SET nome='Lucas Silva' WHERE id=4;
UPDATE pessoas SET nome='Maristela Claro' WHERE id=5;

SELECT * FROM pessoas WHERE id=3

DELETE FROM pessoas WHERE id =3

SELECT * FROM pessoas ORDER BY nome
SELECT * FROM pessoas ORDER BY nascimento DESC
SELECT * FROM pessoas ORDER BY nascimento ASC

ALTER TABLE pessoas ADD genero VARCHAR(1) NOT NULL AFTER nascimento

UPDATE pessoas SET genero='M' WHERE id=1;
UPDATE pessoas SET genero='F' WHERE id=2;
UPDATE pessoas SET genero='M' WHERE id=4;
UPDATE pessoas SET genero='F' WHERE id=5;
UPDATE pessoas SET genero='F' WHERE id=6;

SELECT COUNT(id), genero FROM pessoas GROUP BY genero;

DROP DATABASE name_database;

DROP TABLE name_table;

ALTER TABLE `video` ADD CONSTRAINT `fk_author` FOREIGN KEY (`fk_author`) REFERENCES `author`(`id_author`) ON DELETE CASCADE ON UPDATE CASCADE; 

SELECT * FROM `video` JOIN author ON video.fk_author = author.id_author;

SELECT video.title, author.name FROM `video` JOIN author ON video.fk_author = author.id_author; 

SELECT video.title,author.name,seo.category FROM `video` JOIN seo ON fk_seo=seo.id_seo JOIN author ON video.fk_author=author.id_author;

SELECT playlist.name_pl, video.title, author.name FROM playlist 
JOIN videos_playlist ON playlist.id_playlist=videos_playlist.fk_playlist 
JOIN video ON video.id_video=videos_playlist.fk_videos
JOIN author ON author.id_author=video.fk_author;

SELECT*FROM videos_canais AS vc JOIN videos AS v ON vc.fk_canal=v.id_video; 

SELECT*FROM videos_canais AS vc JOIN videos AS v ON vc.fk_video=v.id_video
JOIN canais AS c ON vc.fk_canal=c.id_canal;

SELECT v.nome_video, v.nome_autor, c.nome_canal FROM videos_canais AS vc JOIN videos AS v ON vc.fk_video=v.id_video JOIN canais AS c ON vc.fk_canal=c.id_canal; 