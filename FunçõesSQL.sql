SELECT SUM(QUANTIDADE * [PREÇO])
FROM [ITENS NOTAS FISCAIS]
WHERE NUMERO = 100

CREATE FUNCTION FaturamentoNota (@NUMERO AS INT) RETURNS FLOAT
AS
BEGIN
	DECLARE @FATURAMENTO FLOAT
	SELECT @FATURAMENTO =  SUM(QUANTIDADE * [PREÇO])
	FROM [ITENS NOTAS FISCAIS]
	WHERE NUMERO = @NUMERO
	RETURN @FATURAMENTO
END

SELECT NUMERO, [dbo].[FaturamentoNota](NUMERO) AS FATURAMENTO FROM [NOTAS FISCAIS]
