-- CRIANDO TABELA TEMPORÁRIA (#)
CREATE TABLE #TABELA01 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO #TABELA01 (ID, NOME) VALUES('1','JOÃO')

INSERT INTO #TABELA01 (ID, NOME) VALUES('2','PEDRO') 

SELECT * FROM #TABELA01


-- CRIANDO TABELA TEMPORÁRIA (##)
CREATE TABLE ##TABELA01 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO ##TABELA01 (ID, NOME) VALUES('1','JOÃO')

INSERT INTO ##TABELA01 (ID, NOME) VALUES('2','PEDRO') 

SELECT * FROM ##TABELA01

-- CRIANDO TABELA TEMPORÁRIA (@)
DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT, @CONTADOR_NOTAS INT
DECLARE @TABELA_NUMEROS TABLE ([NUMERO] INT, [STATUS] VARCHAR(200))
CREATE TABLE #TABELA_NUMEROS2 ([NUMERO] INT, [STATUS] VARCHAR(200))

SET @LIMITE_MINIMO = 1
SET @LIMITE_MAXIMO = 100000

-- SET NOCOUNT NÃO EXIBE A MENSAGEM 'LINHA AFETADA' NA ABA DE MENSAGEMS.
SET NOCOUNT ON
WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
   SELECT @CONTADOR_NOTAS = COUNT(*) FROM [NOTAS FISCAIS] WHERE [NUMERO] = @LIMITE_MINIMO
   IF @CONTADOR_NOTAS > 0 
       BEGIN
          INSERT INTO @TABELA_NUMEROS ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, 'É nota fiscal')
	      INSERT INTO #TABELA_NUMEROS2 ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, 'É nota fiscal')
	   END
   ELSE
       BEGIN
          INSERT INTO @TABELA_NUMEROS ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, 'Não é nota fiscal')
	      INSERT INTO #TABELA_NUMEROS2 ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, 'Não é nota fiscal')
	   END
   SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1   
END

SELECT * FROM @TABELA_NUMEROS
SELECT * FROM #TABELA_NUMEROS2
