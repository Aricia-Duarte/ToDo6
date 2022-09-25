use vitrine_aricia;

-- Quais são os 3 produtos mais caros?
SELECT 
    nomeProduto, valorProduto
FROM
    produto
ORDER BY valorProduto DESC
LIMIT 3;

-- Quantas avaliações cada cliente realizou?
SELECT 
    nomeCliente as Cliente, COUNT(avaliacao.idCliente) AS Qtdade_de_Avaliacoes_Feitas
FROM
    clientes
        INNER JOIN
    avaliacao ON avaliacao.idCliente = clientes.idCliente
GROUP BY avaliacao.idCliente;

-- Qual a média das avaliações de cada produto?
SELECT 
    nomeProduto, AVG(avaliacao.notaAvaliacao) AS NotaMedia
FROM
    produto
        INNER JOIN
    avaliacao ON avaliacao.idProduto = produto.idProduto
GROUP BY avaliacao.idProduto;

-- Qual a data de avaliação mais recente de cada produto?
SELECT 
    nomeProduto as Produto, MAX(avaliacao.dataAvaliacao) AS Avaliacao_Mais_Recente
FROM
    produto
        INNER JOIN
    avaliacao ON avaliacao.idProduto = produto.idProduto
GROUP BY avaliacao.idProduto
ORDER BY avaliacao.dataAvaliacao desc;

-- Quais as clientes cujo o nome se inicia com Joana?
SELECT 
    nomeCliente
FROM
    clientes
WHERE
    nomeCliente LIKE 'Joana%';

-- Qual o produto que recebeu a menor avaliação?
    SELECT 
    nomeProduto as Produto, MIN(avaliacao.notaAvaliacao) AS Nota_Mais_Baixa
FROM
    produto
        INNER JOIN
    avaliacao ON avaliacao.idProduto = produto.idProduto
ORDER BY avaliacao.notaAvaliacao;

-- Quais são os produtos cuja a avaliação mais recente é anterior à 30 dias, liste-os como “Avaliação desatualizada”?
SELECT 
    avaliacao.dataAvaliacao AS Data_Avaliacao,
    DATE_FORMAT(dataAvaliacao, 'data desatualizada') AS Status_Avaliacao,
    produto.nomeProduto AS Produto
FROM
    avaliacao
        INNER JOIN
    produto ON produto.idProduto = avaliacao.idProduto
WHERE
    dataAvaliacao <= NOW() - INTERVAL 30 DAY
GROUP BY avaliacao.idProduto;
