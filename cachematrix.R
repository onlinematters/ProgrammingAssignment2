## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function prepares four functions needed to caching the inverse of matrix x

makeCacheMatrix <- function(x = matrix()) {
  
  ## set m to null to remove any previous entries
  ## Create set function that takes the input matrix and scopes it into set
  ## Create the get() getter function that retrieves the value of X
  ## create the set_inverse() function that sets a new matrix value into m
  ## Create get_inverse() function that calls m to make sure it is NULL or not
  ## Put the functions in named list so they can be called using $ operator
  
  m <<- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse_matrix) m <<- inverse_matrix
  get_inverse <- function() m
  list (set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  ## Call to get the current value of m
  ## check if m is null
  ## get the new matrix to run the inverse function on## calcualte the inverse
  ## assign inverse to m in cache for later use
  
  
  m <- x$get_inverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$set_inverse(m)
  m
  
  }
