-- Active: 1744809616103@@BD-ACD@3306@BD180225117
-- Active: 1744809616103@@BD-ACD@3306
CREATE Table autores_j (id_autor_j INT PRIMARY KEY,nome_j VARCHAR(100),nacionalidade_j VARCHAR(100));
CREATE TABLE editores_j (id_editora_j INT PRIMARY KEY, nome_j VARCHAR(100), pais_j VARCHAR(100));
SELECT * FROM autores_j;
SELECT * FROM editores_j;
CREATE TABLE audiobooks_j (id_audiobook_j INT PRIMARY KEY, titulo_j VARCHAR(100), genero_j VARCHAR(100), id_autor_j INT, id_editora_j INT);
ALTER TABLE audiobooks_j ADD FOREIGN KEY (id_autor_j) REFERENCES autores_j(id_autor_j);
ALTER TABLE audiobooks_j ADD FOREIGN Key (id_editora_j) REFERENCES editores_j(id_editora_j);
ALTER TABLE audiobooks_j ADD COLUMN duracao_j INT;
ALTER TABLE audiobooks_j ADD COLUMN data_lancamento_j DATE;
INSERT INTO autores_j (id_autor_j, nome_j, nacionalidade_j) VALUES (1, 'Machado de Assis', 'Brasileira');
INSERT INTO editores_j (id_editora_j, nome_j, pais) VALUES (1, 'Editora Brasil', 'Brasil');
INSERT INTO audiobooks_j (id_audiobook_j, titulo_j, genero_j, id_autor_j, id_editora_j, duracao_j, data_lancamento_j) VALUES (1, 'Dom Casmurro', 'Romance', 1, 1, 480, '1899-01-01');
INSERT INTO autores_j (id_autor_j, nome_j, nacionalidade_j) VALUES (2, 'Douglas Adams', 'Britânica');
INSERT INTO audiobooks_j (id_audiobook_j, titulo_j, genero_j, id_autor_j, id_editora_j, duracao_j, data_lancamento_j) VALUES (2, 'O Guia do Mochileiro das Galáxias', 'Ficção Científica', 2, 1, 700, '1979-10-12');
SHOW CREATE TABLE audiobooks_j;
ALTER Table audiobooks_j DROP FOREIGN Key audiobooks_j_ibfk_2;
ALTER Table audiobooks_j DROP COLUMN id_editora_j;
drop Table editores_j;