-- Active: 1746021144921@@BD-ACD@3306@BD180225117
CREATE Table clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
cpf VARCHAR(14) UNIQUE NOT NULL,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100),
telefone VARCHAR(20),
cidade VARCHAR(50),
idade INT
);
CREATE TABLE veiculos (
id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
chassi VARCHAR(20) UNIQUE NOT NULL,
modelo VARCHAR(50) NOT NULL,
marca VARCHAR(50) NOT NULL,
ano INT,
preco DECIMAL(10,2),
cor VARCHAR(30),
vendido BOOLEAN DEFAULT FALSE
);
CREATE TABLE vendas (
id_venda INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_veiculo INT,
data_venda DATE
);
ALTER TABLE vendas ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);
ALTER TABLE vendas ADD FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo);