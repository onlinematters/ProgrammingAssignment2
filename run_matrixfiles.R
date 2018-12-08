## This file calls the various functions needed to test makematrix and cachematrix
## source('makematrix.R')

source('cachematrix.R')
n <- matrix(c(1/2, -1/4, -1, 3/4,5,7,-3,1,10), nrow = 3, ncol = 3)

amatrix <- makeCacheMatrix(n)
amatrix$get()               # retrieve the value of x
amatrix$get_inverse()       # retrieve the value of m, which should be NULL
amatrix$set(matrix(c(1/2, -1/4, -1, 3/4,5,.5,-4,3,1.5), nrow = 3, ncol = 3))  # reset value with a new matrix
cacheSolve(amatrix)        # notice mean calculated is mean of 30:50, not 1:10
amatrix$get_inverse()       # retrieve it directly, now that it has been cached
