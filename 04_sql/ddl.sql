CREATE TABLE produtos(
    Id TEXT PRIMARY KEY,
    Nome VARCHAR(255),
    Descricao VARCHAR(255),
    Preco DECIMAL(10,2),
    Categoria VARCHAR(50)
);

CREATE TABLE colaboradores(
    Id TEXT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(100),
    DataContratacao DATE,
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Rua VARCHAR(100) NOT NULL,
    Bairro VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado VARCHAR(2) NOT NULL,
    CEP VARCHAR(8) NOT NULL
);

CREATE TABLE fornecedores(
    Id TEXT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Contato VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Rua VARCHAR(100) NOT NULL,
    Bairro VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado VARCHAR(2) NOT NULL,
    CEP VARCHAR(8) NOT NULL
);