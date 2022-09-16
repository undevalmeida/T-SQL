SELECT SUM(A.QUANTIDADE * A.[PREÇO]) AS FATURAMENTO,
SUM(A.QUANTIDADE * A.[PREÇO]) / 10 AS COMISSAO
FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B
ON A.NUMERO = B.NUMERO
WHERE B.CPF = '1471156710' AND YEAR(B.[DATA]) = 2016
-- DECLARANDO VARIÁVEL
DECLARE @DENOMINADOR INT
-- ATRIBUINDO VALOR A VARIÁVEL 0 PARA GERAR ERRO.
SET @DENOMINADOR = 0
-- ERRO PROVOCADO DENOMINADOR ZERADO
SELECT SUM(A.QUANTIDADE * A.[PREÇO]) AS FATURAMENTO,
SUM(A.QUANTIDADE * A.[PREÇO]) / @DENOMINADOR AS COMISSAO
FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B
ON A.NUMERO = B.NUMERO
WHERE B.CPF = '1471156710' AND YEAR(B.[DATA]) = 2016
-- CRIAR PROCEDURE COM TRATAMENTO
CREATE PROCEDURE TrataErroZero @CPF VARCHAR(12), @ANO INT, @NUM_ERRO INT OUTPUT, @NUM_LINHA INT OUTPUT, @DENOMINADOR INT
AS
BEGIN
	SELECT SUM(A.QUANTIDADE * A.[PREÇO]) AS FATURAMENTO,
	SUM(A.QUANTIDADE * A.[PREÇO]) / @DENOMINADOR AS COMISSAO
	FROM [ITENS NOTAS FISCAIS] A INNER JOIN [NOTAS FISCAIS] B
	ON A.NUMERO = B.NUMERO
	WHERE B.CPF = @CPF AND YEAR(B.[DATA]) = @ANO
	
	SELECT @NUM_ERRO = @@ERROR, @NUM_LINHA = @@ROWCOUNT
END
-- DECLARANDO AS VARIÁVEIS
DECLARE @DENOMINADOR INT,
@CPF VARCHAR(12),
@ANO INT,
@NUM_ERRO INT,
@NUM_LINHA INT
-- ATRIBUINDO VALOR AS VARIÁVEIS
SET @CPF = '1471156710'
SET @ANO = 2016
SET @DENOMINADOR = 0
-- EXECUTANDO A PROCEDURE
EXEC TrataErroZero 
   @CPF = @CPF
 , @ANO = @ANO
 , @DENOMINADOR = @DENOMINADOR
 , @NUM_ERRO = @NUM_ERRO OUTPUT 
 , @NUM_LINHA = @NUM_LINHA OUTPUT
-- TRATAMENTO DO ERRO
IF @NUM_ERRO <> 0
	PRINT 'HOUVE UM ERRO ' + CONVERT(VARCHAR(33), @NUM_ERRO) + ' - ' + CONVERT(VARCHAR(33), @NUM_LINHA)