dados <- dados_componentes

# Em quais faixas de utilização a CPU permanece com maior frequência?
hist(dados$CPU,
     main = "Distribuição do uso da CPU",
     xlab = "Uso da CPU em %",
     ylab = "Qtd de registros")

abline(v = mean(dados$CPU),
       col = "red",
       lwd = 2)

abline(v = median(dados$CPU),
       col = "blue",
       lwd = 2)

# O uso da CPU ficou concentrado entre 10% e 15%,
# com a ocorrência de um valor mais alto, entre 25% a 30%
# Durante o período analisado, não foi observado um uso
# constantemente elevado do processador



hist(dados$RAM,
     main = "Distribuição do uso da RAM",
     xlab = "Uso da RAM (%)",
     ylab = "Quantidade de registros")

abline(v = mean(dados$RAM),
       col = "red",
       lwd = 2)

abline(v = median(dados$RAM),
       col = "blue",
       lwd = 2)

# O uso da RAM apresentou grande concentração próximo de 87%,
# com pouca diferença entre os registros
# Isso indica que o consumo de memória permaneceu de forma
# constante durante o período analisado




# A CPU é estável ou apresenta muita variação?
boxplot(dados$CPU,
        main = "Utilização da CPU",
        ylab = "Uso (%)")

# A maior parte dos registros de CPU está entre 10% e 15%.
# Também foi identificado um valor próximo de 26% como outlier,
# indicando um aumento pontual no uso da CPU.




# A RAM é estável ou apresenta muita variação?
boxplot(dados$RAM,
        main = "Utilização da RAM",
        ylab = "Uso (%)")

# A RAM apresentou pouca variação entre as capturas,
# com a maior parte dos registros próxima de 87%.
# Foi identificado um valor abaixo dos demais como outlier,
# mas no geral o consumo ficou estável.



plot(dados$CPU, dados$RAM,
     main = "Relação entre CPU e RAM",
     xlab = "Uso da CPU (%)",
     ylab = "Uso da RAM (%)")

cor(dados$CPU, dados$RAM)

# A correlação entre CPU e RAM foi de aproximadamente 0,07,
# indicando uma correlação positiva muito fraca.
# Portanto, nesta amostra, o aumento do uso da CPU não esteve
# associado de forma relevante ao aumento do uso da RAM.
# (descobrir que nao existe correlação tambem é descoberta!)





