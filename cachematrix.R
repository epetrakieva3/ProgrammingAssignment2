
## This function creates a list with functions that sets the value 
## of the matrix, gets the value of the matrix, sets the value of 
## the inverse, and gets the value of the invese.

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL
  set<- function(y) {
    x<<-y
    inv<<- NULL
  }
  get <- function()x
  setinverse <- function(solve) inv<<-solve
  getinverse <- function()inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function checks if the inverse has already been computed, and
## if so, it gets that result. If it has not been computed, then it
## computes the inverse and sets the value in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
