># Tratamento de erros
* Não usando a estrutura TRY-CATCH
* Usando a estrutura TRY-CATCH


```
TRY
    <BLOCO DE COMANDOS>
CATCH
    <BLOCO DE COMANDOS CASO HAJA ERRO>
END TRY
```

>## No caso de não usar o TRY-CATCH temos duas funções que podemos usar:
* @@ERROR = Rretorna um inteiro que representa a forma com que o comando anterior terminou. Ex: (Zero indica que executou com sucesso, diferente de zero houve um erro).
* @@ROWCOUNT = Número de linhas afetadas com o erro.

__A obtenção destes dados devem ser feitas após o comando suspeito do erro.__