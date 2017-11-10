asc <- function(x) { strtoi(charToRaw(x),16L) }
X <- read.table("input_p2.txt",sep=" ")
X <- X[!is.na(X)]
contador <- replicate(11,0)

for (word in X){
  h <- NULL
  for (j in 1:length(word)){
    hash <- asc(word[j])-asc('a')+1
    h <- c(h,hash)
  }
  contador[h] <- contador[h]+1
}

# a <- 1
# b <- 2
# c <- 3
# .
# .
# .

letras_en_minuscula <- letters

posicion <- which.max(contador)

print(letras_en_minuscula[posicion])