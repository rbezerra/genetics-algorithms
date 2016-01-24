library("genalg")
dataset <- data.frame(
                    custos <- c(9,5,3,3,7,1,7,10,10),
                    ofertas <- c(50,50,50),
                    demandas <- c(70,60,20)

)

evalFunc <- function(x){

    matriz_quantidades = matrix(x,nrow=3,ncol=3)
    matriz_custos = matrix(dataset$custos,nrow=3,ncol=3)
    custo_total = matrix(0,nrow=3,ncol=3)
    for(i in 1:3){
      for(j in 1:3){
        custo_total[i,j] <- matriz_custos[i,j] * matriz_quantidades[i,j]
      }
    }

    soma_linha1 <- sum(matriz_quantidades[1,])
    soma_linha2 <- sum(matriz_quantidades[2,])
    soma_linha3 <- sum(matriz_quantidades[3,])
    soma_col1 <- sum(matriz_quantidades[,1])
    soma_col2 <- sum(matriz_quantidades[,2])
    soma_col3 <- sum(matriz_quantidades[,3])
    fitness <- sum(x)
    if( soma_linha1 <= dataset$ofertas[1] &&
        soma_linha2 <= dataset$ofertas[2] &&
        soma_linha3 <= dataset$ofertas[3] &&
        soma_col1 <= dataset$demandas[1] &&
        soma_col2 <= dataset$demandas[2] &&
        soma_col3 <= dataset$demandas[3]
    ){
        return (-fitness)
    }
    else{
        return (fitness*1000)
    }

}

monitorFunc <- function(result) {
    print(result)
}

GAmodel.results <- rbga(stringMin=c(0,0,0,0,0,0,0,0,0), stringMax=c(50,50,50,50,50,50,50,50,50), popSize = 200, iters = 100, evalFunc = evalFunc, showSettings=T, verbose=F)
summary(GAmodel.results, echo=TRUE)
plot(GAmodel.results)


