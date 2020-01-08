# 1. Abramson M, Moser WOJ. More Birthday Surprises. The American Mathematical Monthly. 1970 Oct 1;77(8):856–8. 

B <- function(k,n,p) {
    logB <- lfactorial(p-1) - (p-1)*log(n) + lchoose(n-p*(k-1)-1,
                                                     p-1)
    exp(logB)
}

N <- 6e6 # sold, days, n
n <- 200 # winners, p, people

kv <- 1:30


dd <- 1-B(kv, N, n)

plot(kv,dd)

