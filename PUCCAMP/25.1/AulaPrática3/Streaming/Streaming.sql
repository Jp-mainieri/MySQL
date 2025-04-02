CREATE Table usuarios(id_usuario INT PRIMARY KEY, nome VARCHAR(100), email VARCHAR(100));
show tables;
CREATE Table filmes(id_filme INT PRIMARY KEY, titulo VARCHAR(50), genero VARCHAR(70));
CREATE Table assistidos(id_assistido INT PRIMARY KEY,id_usuario INT,id_filme INT,data DATE);
alter TABLE usuarios ADD COLUMN idade INT;
alter table assistidos ADD FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);
alter table assistidos ADD FOREIGN KEY (id_filme) REFERENCES filmes(id_filme);
ALTER TABLE filmes DROP COLUMN genero;
INSERT INTO usuarios(id_usuario, nome, email, idade) VALUES (1,'João Silva','joao@email.com',30);
INSERT INTO usuarios(id_usuario, nome, email, idade) VALUES (2,'Ana Lima','ana@email.com',25)
INSERT INTO filmes(id_filme, titulo) VALUES (1,'Matrix')