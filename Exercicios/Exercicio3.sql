
-- ATUALIZAR A IDADE BASEANDO-SE NA DATA DE NASCIMENTO E NA DATA ATUAL DO COMPUTADOR.
CREATE PROCEDURE CalculaIdade
AS
BEGIN
	UPDATE [TABELA DE CLIENTES] SET IDADE = DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE()) -- ATUALIZA IDADE. ANO DE NASCIMENTO - ANO ATUAL
END


-- INSERINDO NOVO CLIENTE
INSERT INTO [TABELA DE CLIENTES] (CPF, NOME, [ENDERECO 1], BAIRRO, CIDADE, ESTADO, CEP, [DATA DE NASCIMENTO], SEXO, [LIMITE DE CREDITO], [VOLUME DE COMPRA], [PRIMEIRA COMPRA])
VALUES ('123123123', 'JOÃO MACHADO', 'RUA PROJETADA A', 'MADUREIRA', 'RIO DE JANEIRO', 'RJ', '20000', '20000306', 'M', 120000, 120000, 120000)

-- A CONSULTA  APRESENTA O CAMPO NULO
SELECT * FROM [TABELA DE CLIENTES] WHERE CPF = '123123123'
-- AO EXECUTAR A PROCEDURE ELA VAI ATUALIZAR A IDADE EM RELAÇÃO A DIFERENÇA ENTRE OS ANOS DA DATA DE NASCIMENTO E A DATA ATUAL...
EXEC CalculaIdade