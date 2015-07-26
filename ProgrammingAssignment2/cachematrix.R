## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Cache inverse matrix
makeCacheMatrix <- function(x = matrix()) {

  matrix <- NULL
  set <- function(y) {
    matrix <<- NULL
  }
  get <- function()
  setinverse <- function(inverse) matrix <<- inverse
  getinverse <- function() matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Cache calculated inverse matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  matrix <- x$getinverse() 
  if (!is.null(matrix)) {
    message("returning cached data")
    return(matrix)
  }
  
  data <- x$get()
  matrix <- solve(data, ...)
  x$setinverse(matrix)
  matrix
}
