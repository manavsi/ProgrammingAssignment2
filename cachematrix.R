## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverse_of_x <- NULL
  set <- function(y) {
    x <<- y
    inverse_of_x <<- NULL
  }
  get <- function() x
  setinverse<- function(inverse) inv_x <<-inverse
  getinverse <- function() inv_x
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_of_x <- x$getinverse()
  if (!is.null(inverse_of_x)) {
    message("getting cached inverse of the matrix")
    return(inverse_of_x)
  } else {
    inverse_of_x <- solve(x$get())
    x$setinverse(inverse_of_x)
    return(inverse_of_x)
  }
}
