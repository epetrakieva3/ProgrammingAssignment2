## Put comments here that give an overall description of what your
## functions do

## This function sets the value of the matrix, gets the value of
## the matrix, sets the value of the inverse, and gets the value
## of the invese.

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
