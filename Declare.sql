-- AS VARIÁVEIS PODEM SER DECLARADAS DESSA FORMA...
DECLARE @IDADE INT
DECLARE @NOME VARCHAR(200)
DECLARE @DATA DATE

-- ...OU DESSA FORMA
DECLARE @IDADE2 INT, @NOME2 VARCHAR(200), @DATA2 DATE
-- SET É UTILIZADO PARA ATRIBUIÇÃO DE UM VALOR A VARIÁVEL
SET @IDADE = 20
-- IMPRIME A VARIÁVEL DESEJADA
--PRINT @IDADE

SET @NOME = 'JOÃO SILVA'
--PRINT @NOME

SET @DATA = '20180517'
--PRINT @DATA

DECLARE @CPF VARCHAR(12)
SET @CPF = '19290992743'
--PRINT 'CPF: ' + @CPF

-- ATRIBUINDO VALORES AS VARIÁVEIS.
SELECT 
   @NOME2 = NOME -- @NOME ESTÁ RECEBENDO O NOME
 , @DATA2 = [DATA DE NASCIMENTO]  -- @DATA2 RECEBE A DATA DE NASCIMENTO
 , @IDADE2 = IDADE -- @IDADE2 VEM DE IDADE
FROM [TABELA DE CLIENTES]
WHERE CPF = @CPF -- O NOME DA VARIÁVEL E O NOME DO CAMPO NÃO PRECISA SER IGUAIS.

-- AH, MAS COMO FOI POSSÍVEL ELE BUSCAR O FERNANDO? ATRAVÉS DO FILTRO WHERE CPF = @CPF. @CPF NA LINHA 20 ESTÁ RECEBENDO O NÚMERO DE CPF '19290992743'

-- IMPRIMINDO NOME, DATA DE NASCIMENTO E IDADE
PRINT @NOME2
PRINT @DATA2
PRINT @IDADE2