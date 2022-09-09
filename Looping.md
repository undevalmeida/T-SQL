># Looping
``` 
    {sql_statement | statement_block | BREAK | CONTINUE}
```

>### Bolean_expression
    É uma expressão que retorna TRUE ou FALSE. Se a expressão lógica contiver uma instução SELECT, a instrução SELECT deverá ser incluída entre parênteses.
    {sq_statement | statement_block}
    É qualquer instrução Transact-SQL ou agrupamento de instruções, conforme definido com bloco de instruções. Para definir um bloco de instruções, use as palavras-chave BEGIN e END de controle de fluxo.
    BREAK
    Provoca uma saída do loop WHILE mais interno. Todas as instruções que apareçam depois da palavra chave END, que marca o final do loop, serão executadas.
    CONTINUE
    Faz com que o loop WHILE seja reiniciado, ignorando todas as instruções depois da palavra CONTINUE.
