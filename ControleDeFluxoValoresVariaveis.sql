-- VERIFICA SE O DIA SELECIONADO É UM DIA DE SEMANA OU DE FIM DE SEMANA

-- DECLARANDO AS VARIÁVEIS '@DIA_SEMANA' E '@NUMERO_DIAS'
DECLARE @DIA_SEMANA VARCHAR(20)
DECLARE @NUMERO_DIAS INT 

-- ATRIBUINDO A QUANTIDADE DE DIAS QUE '@NUMERO_DIAS' IRÁ RECEBER
SET @NUMERO_DIAS = 7
SET @DIA_SEMANA = DATENAME(WEEKDAY, DATEADD(DAY, @NUMERO_DIAS, GETDATE()))

-- MOSTRA O NOME DA SEMANA
PRINT @DIA_SEMANA

-- TESTE DE CONDIÇÃO. SE '@DIA_SEMANA FOR IGUAL A DOMINGO' OU @DIA_SEMANA FOR IGUAL A 'SÁBADO' "IMPRIME": 'eSTE DIA É DIA DE SEMANA
IF @DIA_SEMANA = 'DOMINGO' OR @DIA_SEMANA = 'SÁBADO'
	PRINT 'ESTE DIA É FIM DE SEMANA'
ELSE -- SENÃO. "IMPRIME": 'ESTE DIA É DIA DA SEMANA.
	PRINT 'ESTE DIA É DIA DA SEMANA'