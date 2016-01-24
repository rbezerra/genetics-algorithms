library(genalg)
library(ggplot2)
library(animation)

dataset <- data.frame(custos = c(60,40,70,50,30,30,30,60,70,50,50,60,80,70,40,40,50,60,70,60,30,40,70,60,50),
                      res1 = c(1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
                      res2 = c(0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
                      res3 = c(0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0)
                      res4 = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0)
                      res5 = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1)
                      necessidade_destino_total = 200000,
                      disponibilidade_origem_total = 200000,
                      )

# funcao de avaliação


evalFunc <- function(x){
  #funcao objetivo
  destinos_utilizados <- x %*% dataset$custos
}
