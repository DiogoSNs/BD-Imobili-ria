-- Criação das tabelas

CREATE TABLE Proprietario (
    id_proprietario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Inquilino (
    id_inquilino INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Imovel (
    id_imovel INT PRIMARY KEY,
    endereco VARCHAR(255) NOT NULL,
    tipo VARCHAR(50),
    valor DECIMAL(10,2),
    id_proprietario INT,
    id_inquilino INT,
    FOREIGN KEY (id_proprietario) REFERENCES Proprietario(id_proprietario),
    FOREIGN KEY (id_inquilino) REFERENCES Inquilino(id_inquilino)
);

CREATE TABLE Corretor (
    id_corretor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    creci VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Contata (
    id_proprietario INT,
    id_corretor INT,
    PRIMARY KEY (id_proprietario, id_corretor),
    FOREIGN KEY (id_proprietario) REFERENCES Proprietario(id_proprietario),
    FOREIGN KEY (id_corretor) REFERENCES Corretor(id_corretor)
);

CREATE TABLE Atende (
    id_corretor INT,
    id_inquilino INT,
    PRIMARY KEY (id_corretor, id_inquilino),
    FOREIGN KEY (id_corretor) REFERENCES Corretor(id_corretor),
    FOREIGN KEY (id_inquilino) REFERENCES Inquilino(id_inquilino)
);
