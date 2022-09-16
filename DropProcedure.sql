-- CRIANDO A PROCEDURE
CREATE PROCEDURE [dbo].[BuscaPorEntidades2] @ENTIDADE AS VARCHAR(10)
AS
BEGIN
	IF @ENTIDADE = 'CLIENTES'
	SELECT [CPF] AS IDENTIFICADOR, [NOME] AS DESCRITOR, [BAIRRO] AS BAIRRO
	FROM [TABELA DE CLIENTES]
	ELSE IF @ENTIDADE = 'VENDEDORES'
	SELECT [MATRICULA] AS IDENTIFICADOR, [NOME] AS DESCRITOR, [BAIRRO] AS BAIRRO
	FROM [TABELA DE VENDEDORES]
END
GO

-- EXCLUSÃO DA PROCEDURE FAZENDO VERIFICAÇÃO SE A PROCEDURE EXISTE. SENÃO EXISTIR, "IMPRIME": 'PROCEDURE NÃO EXISTE'
IF OBJECT_ID('BuscaPorEntidades2', 'P') IS NOT NULL
	DROP PROCEDURE BuscaPorEntidades2
ELSE 
	PRINT 'PROCEDURE NÃO EXISTE'