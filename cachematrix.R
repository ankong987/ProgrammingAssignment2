## Put comments here that give an overall description of what your
## functions do

## getting the matrix and setting the matrix, returns what was cached

makeCacheMatrix <- function(x = matrix()) {
    
    s <- NULL
    set <- function(y)
    {
        x <<- y
        s <<- NULL
    }
    
    get <- function()x
    setinverse <- function(solve) s <<- solve
    getinverse <- function() s
    list(set = set, get = get,
         setinverse = setinverse, 
         getinverse = getinverse)
    
}


## gets cached data and sets it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m))
    {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <-solve(data)
    x$setinverse(m)
    m
}
