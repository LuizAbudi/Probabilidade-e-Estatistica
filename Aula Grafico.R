#### Base de Dados ####
idade = c(12,20,25,40,76)
sexo=c("M", "M", "F", "F", "M")

dados = data.frame(idade, sexo)
dados

#incluindo dados
database=read.csv('dados1.csv',sep =",",dec =",",header = T)

#lendo os dados
database$idade
database$sexo

#ADD daos
database$nome=c('Luiz','Lucas','Elsza','Paula','Ian')

#lendo dados
dim(database)
names(database)
head(database)

#vendo cada dados de acordo com a linha x coluna
database[1,1]
#todas as colunas da 1 linha
database[1,]
#todas as linha da 1 coluna
database[,1]

#trocando um dado 
database[5,1]="11"

#CONdiçao
ifelse(database$idade<=25, "KID", "IDOSO")
#salvando na base
database$TipoIdade = ifelse(database$idade<=25, "KID", "IDOSO")






#### Exercicio ####
dadoEx = read.csv('tabelaEx.csv', sep=",", dec=",")
dadoEx

IMC = function(peso, altura){
  peso/altura^2
}

IMC(dadoEx$Peso, dadoEx$Altura)

dadoEx$IMC = IMC(dadoEx$Peso, dadoEx$Altura)

#classificando o IMC
dadoEx$Classe_IMC = ifelse((IMC(dadoEx$Peso, dadoEx$Altura)<19), "Baixo", "Normal")

dadoEx
                           