># Stored Procedures

* São rotinas executadas pelo servidor. Elas possuem grande poder de performance para manipulação de tabelas do SQL SERVER.
* As SPs(Stored Procedures) podem ser também definidas pelo usuário(UDF) ou podemos usar uma série de SPs disponíveis pelo SQL SERVER.

> Diferença entre Stored Procedure e Função.
* Função sempre vai retornar um valor: Escalar ou Tabela SET @NOTA = dbo.AchaNota(@CPF)

* A SP vai executar um procedimento sem a necessidade de retornar um valor. EXEC CalculaComissao @CPF='123333121'

>
    A SP pode até voltar valor. Mas na verdade o que ela faz é modificar o valor de uma variável enviada a ela:

    SET @MENSAGEM=''
    EXEC CalculaComissao @CPF=@CPF, @MENSAGEM=@MENSAGEM OUTPUT
    IF @MENSAGEM <>''