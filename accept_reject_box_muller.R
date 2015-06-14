Nsim <- 500000000

while(i < Nsim){
    r <- runif(2)
    theta <- 2*pi*r[1]
    r2 <- -2*log(r[2])
    
    x <- sqrt(r2)*cos(theta)
    y <- sqrt(r2)*sin(theta)

    i <- i+1
}
