--database: ./db.sqlite

CREATE TABLE cursos (id, nome, aulas);

DROP TABLE cursos;

CREATE TABLE cursos (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    aulas INTEGER
);

PRAGMA table_info('cursos');

SELECT * FROM cursos;

INSERT INTO cursos (id, nome, aulas) VALUES (1, 'Banco de Dados', 15);

INSERT INTO cursos (id, nome, aulas) VALUES (2, 'JavaScript', 5);

DELETE FROM "cursos" WHERE "id" = 1;

SELECT id, nome FROM cursos;

SELECT * FROM cursos LIMIT 1;

SELECT * FROM "cursos" WHERE "id" = 1;

UPDATE cursos SET nome = 'HTML e CSS', aulas = 20 WHERE id = 1;


