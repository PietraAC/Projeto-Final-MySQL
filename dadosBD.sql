USE Imobiliaria;

-- Inserção de dados na tabela Proprietarios
INSERT INTO Proprietarios (nome, telefone) VALUES 
('João Silva', '123456789'),
('Maria Oliveira', '987654321'),
('Carlos Pereira', '543216789'),
('Ana Costa', '321654987'),
('Paulo Souza', '789123456');

-- Inserção de dados na tabela Imoveis
INSERT INTO Imoveis (endereco, proprietario_id) VALUES 
('Rua Oswaldo Cruz, 123', 1),
('Rua Rio Branco, 456', 2),
('Rua Doutor Munhoz da Rocha, 789', 3),
('Rua Ponta Grossa, 101', 4),
('Rua Péricles da Cunha, 202', 5);

-- Inserção de dados na tabela Corretores
INSERT INTO Corretores (nome, telefone) VALUES 
('Pedro Mendes', '159753456'),
('Laura Almeida', '357951456'),
('Bruno Lima', '951357456'),
('Carla Rodrigues', '753159456'),
('Renato Santos', '456753951');

-- Inserção de dados na tabela Proprietarios_Corretores
INSERT INTO Proprietarios_Corretores (proprietario_id, corretor_id) VALUES 
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(5, 1);

-- Inserção de dados na tabela Inquilinos
INSERT INTO Inquilinos (nome, telefone) VALUES 
('Juliana Rocha', '852147963'),
('Ricardo Mendes', '741258963'),
('Fernanda Lima', '963852741'),
('Marcos Almeida', '654987321'),
('Pietra Aceituno Cavalheiri', '789654123');

-- Inserção de dados na tabela Corretores_Inquilinos
INSERT INTO Corretores_Inquilinos (inquilino_id, corretor_id) VALUES 
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(5, 1);

-- Inserção de dados na tabela Alugueis
INSERT INTO Alugueis (inquilino_id, imovel_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
