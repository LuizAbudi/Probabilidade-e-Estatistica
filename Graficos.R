dados=read.csv('dados_plot.csv',sep =",")


head(dados, 2)

names(dados)
names(dados) = c('linha','empresa','rendimento','tamanho','vendas','palavra','fre_palavra')

head(dados)

table(dados$)