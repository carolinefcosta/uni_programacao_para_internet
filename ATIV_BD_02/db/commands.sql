--database: ./db.sqlite

DROP TABLE assistidos;
DROP TABLE usuarios;
DROP TABLE filmes;

CREATE TABLE usuarios (
    id INTEGER NOT NULL PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT
);

CREATE TABLE filmes (
    id INTEGER NOT NULL PRIMARY KEY,
    nome TEXT NOT NULL,
    genero TEXT
);

CREATE TABLE assistidos (
    id INTEGER NOT NULL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_filme INTEGER NOT NULL,

    FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY(id_filme) REFERENCES filmes(id)
);

INSERT INTO usuarios (id, nome, email) 
VALUES 
    (1, 'Caroline', 'caroline@teste.com'),
    (2, 'Paulo', 'paulo@teste.com'),
    (3, 'Yan', 'yan@teste.com'),
    (4, 'Gabriel', 'gabriel@teste.com'),
    (5, 'Henrique', 'henrique@teste.com');

INSERT INTO filmes (id, nome, genero) 
VALUES 
    (1, 'La Casa de Papel', 'Suspense'),
    (2, 'A Cabana', 'Suspense'),
    (3, 'A freira', 'Terror'),
    (4, 'Se beber não case', 'Comédia'),
    (5, 'Lanterna Verde', 'Ação');

INSERT INTO assistidos (id, id_usuario, id_filme) 
VALUES 
    (1, 1, 5),
    (2, 1, 3),
    (3, 2, 4),
    (4, 5, 1),
    (5, 3, 2);

SELECT * FROM filmes;
SELECT * FROM usuarios;
SELECT * FROM assistidos;