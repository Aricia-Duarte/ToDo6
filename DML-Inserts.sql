create database  if not exists Vitrine_Aricia;

use Vitrine_Aricia;

CREATE TABLE IF NOT EXISTS Produto (
    idProduto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nomeProduto VARCHAR(64) NOT NULL,
    valorProduto FLOAT(6 , 2 ),
    descricaoProduto VARCHAR(64),
    estoqueProduto INT,
    departamentoProduto VARCHAR(32),
    cartegoriaProduto VARCHAR(32)
);

CREATE TABLE IF NOT EXISTS Clientes (
    idCliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nomeCliente VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS Avaliacao (
    idAvaliacao INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    tituloAvaliacao VARCHAR(64),
    dataAvaliacao DATE,
    comentarioAvaliacao VARCHAR(64),
    notaAvaliacao INT NOT NULL,
    idCliente INT,
    idProduto INT,
    CONSTRAINT fk_idClieAvalia FOREIGN KEY (idCliente)
        REFERENCES Clientes (idCliente),
    CONSTRAINT fk_idProdAvalia FOREIGN KEY (idProduto)
        REFERENCES Produto (idProduto)
);

-- Inserindo os produtos
insert into produto(nomeProduto,valorProduto,descricaoProduto,estoqueProduto,departamentoProduto,cartegoriaProduto) values 
("Camisa Xadrez",125.53,"Camisa flanelada para toda a familia",10,"Feminino","Camisas e Camisetas"),
("Camiseta Croped",49.90,"Camiseta Croped de Algodão Egipcio",1,"Feminino","Camisas e Camisetas"),
("Body Infantil",69.90,"Body Infantil para bebes de 6 a 12 meses",20,"Infantil","Body"),
("Pijama Infantil Bobs",75.00,"Pijama de calça e camiseta de Manga Longa",2,"Infantil","Moda Intima"),
("Calça de Sarja",125.50,"Calça Infantil de Menino",7,"Infantil","Calças e Shorts"),
("Vestido de Verão Florido",45.75,"Vestido de Malha Florido",35,"Feminino","Vestidos e Saias"),
("Blusa de Trico",32.55,"Blusa de Trico Feminina",25,"Feminino","Blusas e Sueter"),
("Saia Longa de Croche",255.00,"Saia Longa de Croche feita com linhas sustentaveis",2,"Feminino","Vestidos e Saias"),
("Camisa Social Branca",200.00,"Camisa Social Branca em Algodao Egipcio",10,"Masculino","Camisas e Camisetas"),
("Calça Social",235.50,"Calça Social de Brim",2,"Masculino","Calças e Shorts"),
("Roupao StarWars",119.90,"Roupão Flanelado estampa StarWars",12,"Masculino","Moda Intima"),
("Pijama Masculino Manga Curta",89.90,"Pijama Masculino de Shorts e Manga Curta",2,"Masculino","Moda Intima"),
("Biquini Cavado Rosa",98.00,"Biquini Cavado na Cor Rosa",5,"Feminino","Moda Intima"),
("Short Masculino de Banho",55.00,"Short Masculino em tecido Impermeavel",25,"Masculino","Calças e Shorts"),
("Camisa Social Branca",102.10,"Camisa Social em Tecido que não Amassa",3,"Feminino","Camisas e Camisetas")
;

-- Inserindo Os Clientes
insert into clientes(nomeCliente) values 
("Aricia Duarte"), ("Leandro Duarte"), ("Luth"), ("Joana Larissa"), ("Alana Joana"), 
("Erica"),("Anderson Araujo"), ("Renato Passo"), ("Tiago Silva"), ("Thales Joao"), 
("Thomas Joao"), ("Sophia Joao");

-- Inserindo as Avaliações
insert into avaliacao(tituloAvaliacao,dataAvaliacao,comentarioAvaliacao,notaAvaliacao,idCliente,idProduto) values
("Produto Maravilhoso","2022-09-22","adorei o produto",5,5,1), ("Produto Explendido","2022-07-15","produto explendido",5,6,2),
("Entrega muito rapida","2022-06-22","servico de entrega otimo",3,3,2), ("Entrega muito rapida","2022-03-22","servico de entrega",3,3,3),
("Adorei o produto","2022-04-10","Muito bom",5,1,4), ("Adorei","2022-03-22","Show! Material e caimento ótimo",5,2,5),
("Muito Bom","2022-03-22","servico de entrega",4,3,6), ("Não Gostei","2022-03-22","O tecido não é legal",2,4,7),
("Gostei","2022-03-22","produto muito bom",4,6,9), ("Maravilhoso","2022-03-22","Genteeee... é linda! A calça veste super bem",5,7,10), ("Interessante","2022-03-22","Super confortavel",4,8,11),
("Adorei o tecido","2022-03-22","O tecido é super macio",5,9,12), ("Confortavel","2022-01-11","ótimo caimento.",3,10,13),
("Muito Bom","2022-05-17","servico de entrega",4,10,14), ("Achei que fosse diferente","2021-08-13","servico de entrega",2,9,15),
("A cor não é a mesma","2022-03-22","servico de entrega",1,8,15), ("Entrega muito rapida","2022-08-25","servico de entrega",3,7,14),
("Produto muito bom","2022-09-22","Vale super a pena comprar",4,6,13), ("Adorei","2020-03-22","Muito lindo",4,5,12),
("Fiquei apaixonada","2022-02-28","Dos deuses!",4,4,11), ("Adorei o modelo","2019-05-22","ótimo caimento",4,3,12),
("Não alinhou no corpo","2021-11-22","O corte não é legal e a peça fica torta ao vestir",1,2,10), ("Muito gostoso de vestir","2020-10-22","Tecido maravilhoso",4,1,9), 
("Legal demais","2022-09-12","Muito show",4,5,8), ("","2022-05-10","servico de entrega não foi legal",2,4,7),
("","2022-03-02","Podia ser melhor",2,3,6), ("Shooooowwww","2022-03-04","Super valendo a pena",5,11,5),
("Não gostei","2022-03-22","Muito ruim!",1,12,4), ("Precisei trocar","2021-01-02","O produto é bom, mas comprei tamanho menor",3,6,3),
("Tamanho pequeno","2022-03-22","Precisei mudar o tamanho",3,5,8);