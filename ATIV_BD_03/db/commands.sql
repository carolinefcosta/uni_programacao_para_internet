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
    id INTEGER NOT NULL,
    cliente_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    data NOT NULL
);