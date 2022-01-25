CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
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