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
INSERT INTO clientes (cpf, nome, email, telefone, cidade, idade) VALUES
('111.111.111-11', 'João Silva', 'joao@email.com', '11999999999', 'São Paulo', 35),
('222.222.222-22', 'Ana Lima', 'ana@email.com', '11988888888', 'Campinas', 28),
('333.333.333-33', 'Carlos Souza', 'carlos@email.com', '11977777777', 'Sorocaba', 42),
('444.444.444-44', 'Bruna Dias', 'bruna@email.com', '11966666666', 'Jundiaí', 31),
('555.555.555-55', 'Tiago Ramos', 'tiago@email.com', '11955555555', 'Santos', 50),
('666.666.666-66', 'Lara Monteiro', 'lara@email.com', '11944444444', 'Guarulhos', 27),
('777.777.777-77', 'Marcos Paulo', 'marcos@email.com', '11933333333', 'São Paulo', 29),
('888.888.888-88', 'Beatriz Leal', 'beatriz@email.com', '11922222222', 'Campinas', 33),
('999.999.999-99', 'Rafael Nunes', 'rafael@email.com', '11911111111', 'Osascxo', 38),
('000.000.000-00', 'Fernanda Rocha', 'fernanda@email.com', '11900000000', 'Sorocaba', 45);
INSERT INTO veiculos (chassi, modelo, marca, ano, preco, cor) VALUES
('CH001', 'Civic', 'Honda', 2020, 95000.00, 'Preto'),
('CH002', 'Corolla', 'Toyota', 2021, 98000.00, 'Branco'),
('CH003', 'Onix', 'Chevrolet', 2019, 65000.00, 'Prata'),
('CH004', 'HB20', 'Hyundai', 2020, 72000.00, 'Vermelho'),
('CH005', 'Gol', 'Volkswagen', 2018, 58000.00, 'Cinza'),
('CH006', 'Argo', 'Fiat', 2021, 70000.00, 'Azul'),
('CH007', 'Ka', 'Ford', 2019, 60000.00, 'Branco'),
('CH008', 'Tracker', 'Chevrolet', 2022, 120000.00, 'Preto'),
('CH009', 'Renegade', 'Jeep', 2021, 110000.00, 'Verde'),
('CH010', 'Fusion', 'Ford', 2017, 85000.00, 'Prata');