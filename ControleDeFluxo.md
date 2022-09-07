># Controle de Fluxo

```
    IF BOOLEAN_EXPRESSION
        {SQL_STATEMENT | STATEMENT_BLOC}
    [ ELSE
        {SQL_STATEMENT | STATEMENT_BLOCK}]
```
>## BOLEAN_EXPRESSION
    É uma expressão que retorna TRUE ou FALSE. Se a expressão lógica contiver uma instrução SELECT, a instrução SELECT deverá ser incluída entre parênteses.

>## {SQL_STATEMENT | STATEMENT_BLOCK}
    É qualquer instrução ou agrupamento de instruções Transact-SQL, conforme definido por blocos de instruções. A menos que um bloco de instruções seja usado, a condição IF ou ELSE pode afetar o desempenho de somente uma instrução Transact-SQL