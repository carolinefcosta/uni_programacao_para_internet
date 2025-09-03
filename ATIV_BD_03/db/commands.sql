--database: ./db.sqlite
CREATE TABLE produtos (
    id INTEGER NOT NULL PRIMARY KEY,
    nome TEXT NOT NULL,
    preco INTEGER NOT NULL
);

CREATE TABLE clientes (
    id INTEGER NOT NULL PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE compras (
    id INTEGER NOT NULL PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    data TEXT NOT NULL,

    FOREIGN KEY(cliente_id) REFERENCES clientes(id)
    FOREIGN KEY(produto_id) REFERENCES produtos(id)

);
 
DROP TABLE clientes;
DROP TABLE compras;
DROP TABLE produtos;

INSERT INTO produtos (id, nome, preco) 
    VALUES (1, 'Notebook', 1000),
        (2, 'Smartphone', 500), 
        (3, 'Tablet', 300);

INSERT INTO clientes (id, nome, email) 
    VALUES (1, 'Maria', 'maria@email.com'),
        (2, 'João', 'joao@email.com');

INSERT INTO compras (id, cliente_id,produto_id, data)
 VALUES (1, 2, 1, '2049-01-01');

INSERT INTO compras (id, cliente_id,produto_id, data)
 VALUES (2, 1, 2, '2049-01-02');

INSERT INTO compras (id, cliente_id,produto_id, data)
 VALUES (3, 2, 3, '2049-01-03');

SELECT * FROM produtos;

SELECT nome FROM produtos;

SELECT * FROM compras WHERE cliente_id = 2;

SELECT rowid, * FROM produtos;