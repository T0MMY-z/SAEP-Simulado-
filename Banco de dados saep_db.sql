CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL
);

SELECT * FROM usuários

-----------------------------------

CREATE TABLE produtos (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  quantidade INTEGER NOT NULL DEFAULT 0,
  estoque_minimo INTEGER NOT NULL DEFAULT 0
);
INSERT INTO produtos (nome, quantidade, estoque_minimo)
VALUES ('Meia Esportiva', 10, 2);

SELECT * FROM produtos

-----------------------------------

CREATE TABLE movimentacoes (
  id SERIAL PRIMARY KEY,
  produto_id INTEGER REFERENCES produtos(id),
  usuario_id INTEGER REFERENCES usuarios(id),
  tipo VARCHAR(10), -- entrada|saida
  quantidade INTEGER NOT NULL,
  data_movimentacao TIMESTAMP DEFAULT NOW(),
  observacao TEXT
);

SELECT * FROM movimentacoes