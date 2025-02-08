-- Inserção de dados fictícios nas tabelas

-- Dados para Proprietario
INSERT INTO Proprietario (id_proprietario, nome, telefone, email) VALUES
(1, 'Carlos Silva', '11987654321', 'carlos@email.com'),
(2, 'Ana Souza', '21987654321', 'ana@email.com'),
(3, 'Mariana Lima', '31987654321', 'mariana@email.com'),
(4, 'João Pedro', '41987654321', 'joao@email.com'),
(5, 'Fernanda Alves', '51987654321', 'fernanda@email.com'),
(6, 'Ricardo Mendes', '61987654321', 'ricardo@email.com'),
(7, 'Beatriz Castro', '71987654321', 'beatriz@email.com');

-- Dados para Inquilino
INSERT INTO Inquilino (id_inquilino, nome, telefone, email) VALUES
(1, 'Lucas Oliveira', '11912345678', 'lucas@email.com'),
(2, 'Juliana Santos', '21912345678', 'juliana@email.com'),
(3, 'Gustavo Nunes', '31912345678', 'gustavo@email.com'),
(4, 'Camila Ferreira', '41912345678', 'camila@email.com'),
(5, 'Felipe Rocha', '51912345678', 'felipe@email.com'),
(6, 'Sofia Martins', '61912345678', 'sofia@email.com'),
(7, 'Mateus Ribeiro', '71912345678', 'mateus@email.com');

-- Dados para Imovel
INSERT INTO Imovel (id_imovel, endereco, tipo, valor, id_proprietario, id_inquilino) VALUES
(1, 'Rua A, 123', 'Apartamento', 250000.00, 1, 1),
(2, 'Rua B, 456', 'Casa', 350000.00, 2, 2),
(3, 'Rua C, 789', 'Apartamento', 200000.00, 3, 3),
(4, 'Rua D, 101', 'Casa', 500000.00, 4, 4),
(5, 'Rua E, 112', 'Sobrado', 450000.00, 5, 5),
(6, 'Rua F, 131', 'Apartamento', 220000.00, 6, 6),
(7, 'Rua G, 415', 'Casa', 400000.00, 7, 7);

-- Dados para Corretor
INSERT INTO Corretor (id_corretor, nome, telefone, email, creci) VALUES
(1, 'Roberto Lima', '11955556666', 'roberto@email.com', 'CRECI1234'),
(2, 'Patrícia Gomes', '21955556666', 'patricia@email.com', 'CRECI5678'),
(3, 'Daniel Costa', '31955556666', 'daniel@email.com', 'CRECI9101'),
(4, 'Adriana Silva', '41955556666', 'adriana@email.com', 'CRECI1121'),
(5, 'Fernando Ribeiro', '51955556666', 'fernando@email.com', 'CRECI3141'),
(6, 'Tatiane Almeida', '61955556666', 'tatiane@email.com', 'CRECI5161'),
(7, 'Gabriel Sousa', '71955556666', 'gabriel@email.com', 'CRECI7181');

-- Dados para Contata
INSERT INTO Contata (id_proprietario, id_corretor) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7);

-- Dados para Atende
INSERT INTO Atende (id_corretor, id_inquilino) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7);
