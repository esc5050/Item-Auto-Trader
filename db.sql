CREATE DATABASE IF NOT EXISTS item_auto_trader;
USE item_auto_trader;

CREATE TABLE items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    foto VARCHAR(500) NOT NULL,
    pais VARCHAR(100) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    preco_minimo DECIMAL(10,2) NOT NULL,
    preco_maximo DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dados para teste
INSERT INTO items (foto, pais, nome, descricao, preco_minimo, preco_maximo) VALUES
('https://picsum.photos/id/1015/200/150', 'Japão', 'Nissan GT-R', 'Esportivo clássico', 50000.00, 120000.00),
('https://picsum.photos/id/111/200/150', 'Alemanha', 'BMW M3', 'Sedan de alto desempenho', 45000.00, 95000.00),
('https://picsum.photos/id/112/200/150', 'Itália', 'Ferrari F8', 'Supercarro italiano', 250000.00, 400000.00);

SELECT * FROM items;
