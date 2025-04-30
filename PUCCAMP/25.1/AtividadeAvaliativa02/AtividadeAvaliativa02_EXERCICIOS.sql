-- Active: 1746021144921@@BD-ACD@3306@BD180225117
UPDATE clientes SET telefone = '19984448104' WHERE cpf = '333.333.333-33';
UPDATE veiculos SET vendido = TRUE WHERE chassi = 'CH001';
INSERT INTO vendas (id_cliente,id_veiculo) VALUES (1,1);
UPDATE veiculos SET preco = preco * 1.1 WHERE marca = 'Chevrolet';
UPDATE clientes SET cidade = 'São Paulo' WHERE idade > 40;
DELETE FROM clientes WHERE cpf = '000.000.000-00';
DELETE FROM veiculos WHERE ano < 2020;
UPDATE veiculos SET cor = 'Grafite' WHERE marca = 'Ford';
DELETE FROM vendas WHERE data_venda < 2024-01-01;
TRUNCATE TABLE vendas;