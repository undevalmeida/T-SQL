
CREATE PROCEDURE BuscaNotasCliente
@CPF AS VARCHAR(12),
@DATA_INICIAL AS DATETIME = '20160101',
@DATA_FINAL AS DATETIME = '20161231'
AS
BEGIN
	SELECT
	   *
	FROM [NOTAS FISCAIS]
	WHERE CPF = @CPF AND [DATA] >= @DATA_INICIAL AND [DATA] <= @DATA_FINAL 
END

EXEC BuscaNotasCliente @CPF='19290992743'
EXEC BuscaNotasCliente @CPF='19290992743', @DATA_INICIAL = '20161201'
EXEC BuscaNotasCliente @CPF='19290992743', @DATA_FINAL = '20160131'