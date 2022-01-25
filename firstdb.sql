CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas (nome, nascimento) VALUES ('Plínio','1991-09-04')
INSERT INTO pessoas (nome, nascimento) VALUES ('Jéssica','1991-07-04')
INSERT INTO pessoas (nome, nascimento) VALUES ('Soraia','2021-12-18')