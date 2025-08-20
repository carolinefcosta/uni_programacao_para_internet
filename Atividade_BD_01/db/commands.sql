--database: ./db.sqlite

CREATE TABLE produtos (
    id,
    nome,
    preco
);

CREATE TABLE clientes (
    id,
    nome,
    email
);

CREATE TABLE compras (
    id,
    cliente_id,
    produto_id,
    data
);

INSERT INTO produtos (id, nome, preco) VALUES (1, 'Notebook', 1000);

INSERT INTO produtos (id, nome, preco) VALUES (2, 'Smartphone', 500);

INSERT INTO produtos (id, nome, preco) VALUES (3, 'Tablet', 300);

INSERT INTO clientes (id, nome, email) VALUES (1, 'Maria', 'maria@email.com');

INSERT INTO clientes (id, nome, email) VALUES (2, 'João', 'joao@email.com');

INSERT INTO compras (id, client_id, produto_id, data) VALUES (1, 2, 1, '2049-01-01');

INSERT INTO compras (id, client_id, produto_id, data) VALUES (2, 1, 2, '2049-01-02');

INSERT INTO compras (id, client_id, produto_id, data) VALUES (1, 2, 3, '2049-01-03');

SELECT * FROM produtos;

SELECT nome FROM produtos;