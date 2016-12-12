## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) x <<- solve
    getinvesre <- function() i
    list( set = set, get = get, 
          setinverse = setinverse, getinverse = getinverse)
}

cacheSolve <- function (x, ...) {
    i <- x$getinvesre()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    matr <- x$get()
    i <- solve(matr, ...)
    x$setinverse(i)
    i
}
