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

CREATE TABLE clientes(
    Id TEXT NOT NULL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Telefone VARCHAR(20),
    Email VARCHAR(100) DEFAULT 'Sem email',
    Endereco VARCHAR(255) NOT NULL
);

CREATE TABLE pedidos(
    Id TEXT PRIMARY KEY,
    IdCliente TEXT NOT NULL,
    DataHoraPedido DATETIME NOT NULL,
    Status VARCHAR(50) NOT NULL,
    FOREIGN KEY (IdCliente) REFERENCES clientes(Id) ON DELETE CASCADE 
    -- Ao deletar um cliente, todos os seus pedidos também serão deletados
);

CREATE TABLE itens_pedido(
    Idpedido TEXT ,
    Idproduto TEXT ,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (Idpedido, Idproduto),
    FOREIGN KEY (Idpedido) REFERENCES pedidos(Id) ON DELETE CASCADE,
    FOREIGN KEY (Idproduto) REFERENCES produtos(Id) ON DELETE CASCADE
    
);