#### Funçoes Trigonométricas ####
sin(pi/2)
cos(pi)
tan(pi/4)

#### Vetor ####
x=c(1,2,3,4)
x+1
(y=c(2:5)) #(....)mosrar
x+y

#### Para a Matriz ####
x
(x=4)
(x=1:4)

#### Matriz ####
z=matrix(x,nrow = 2, byrow = F)
z
z=matrix(x, nrow = 2, byrow = T)
z
solve(z)  #inverse
t(z)      #transposta
determinant(z)



#### Calculo 1  ####
#derivada
D(expression(x^2), 'x')
D(expression(tan(x)*sin(x)^2), 'x')

#integral definida
library(mosaicCalc)
antiD(a*x^2 ~ x)

#Funcoes
funcao = function(x){
  2*x-1
}
funcao(1)

#curva de -10 a 10
curve(funcao,-10,10)
#linha h=horis. v=vert.
abline(h=0, col='red')

#raiz 
uniroot(funcao, lower = 0, upper = 4)
#mais de uma raiz
library(rootSolve)

funcao2 = function(x){
  2*x^2-3*x-4
}
curve(funcao2, -2, 3)
abline(h=0, col=2)

multiroot(funcao2, start = c(-1,2))
abline(v=c(-0.850, 2.350), col=4)

#integral definida
integrate(funcao,0,2)

#### Exercicio 1 ####
#criar a funcao
funcEx1 = function(x){
  x^2-5*x+6
}
#plotar o graf
curve(funcEx1, 1, 4)
#linha x = 0
abline(h=0, col=2)
#library
library(rootSolve)
#obter as raizes
multiroot(funcEx1, start = c(2,3))
#mostrando as raizes
abline(v=c(2,3), col = 4)
#calculando a integral
integrate(funcEx1, 2, 3)












