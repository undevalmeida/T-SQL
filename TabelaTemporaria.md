># Tabela temporária
* Tabela que seus nomes começam com # - Tabelas valem para conexão vigente.
  * Se a conexão vigente for fechada ou reiniciada a tabela some.
* Tabelas com seus nomes com ## - Tabelas que valem para várias conexões.
  * Somente apagada quando der um logoff ou se o serviço do SQL Server for fechado
* Tabelas que seus nomes começam com @ - Tabelas que valem para procedimento que está sendo executado.
  * Declarada como se fosse uma variável, válida somente para o bloco de comando atual.