-- Criação do banco de dados 
CREATE DATABASE Imobiliaria;

USE Imobiliaria;

-- Tabela Proprietarios
CREATE TABLE Proprietarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20)
);

-- Tabela Imoveis
CREATE TABLE Imoveis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(255) NOT NULL,
    proprietario_id INT,
    FOREIGN KEY (proprietario_id) REFERENCES Proprietarios(id)
);

-- Tabela Corretores
CREATE TABLE Corretores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20)
);

-- Tabela Proprietarios_Corretores
CREATE TABLE Proprietarios_Corretores (
    proprietario_id INT,
    corretor_id INT,
    PRIMARY KEY (proprietario_id, corretor_id),
    FOREIGN KEY (proprietario_id) REFERENCES Proprietarios(id),
    FOREIGN KEY (corretor_id) REFERENCES Corretores(id)
);

-- Tabela Inquilinos
CREATE TABLE Inquilinos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20)
);

-- Tabela Corretores_Inquilinos
CREATE TABLE Corretores_Inquilinos (
    inquilino_id INT,
    corretor_id INT,
    PRIMARY KEY (inquilino_id, corretor_id),
    FOREIGN KEY (inquilino_id) REFERENCES Inquilinos(id),
    FOREIGN KEY (corretor_id) REFERENCES Corretores(id)
);

-- Tabela Alugueis
CREATE TABLE Alugueis (
    inquilino_id INT,
    imovel_id INT,
    PRIMARY KEY (inquilino_id, imovel_id),
    FOREIGN KEY (inquilino_id) REFERENCES Inquilinos(id),
    FOREIGN KEY (imovel_id) REFERENCES Imoveis(id)
);
