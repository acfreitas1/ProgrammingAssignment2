## Put comments here that give an overall description of what your
## functions do
# Here are two functions that are used to create a special object that stores a matrix and cache's its inverse.

## Write a short comment describing this function
# The makeCacheMatrix contains a list of other functions, it creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, 
             get = get, 
             setsolve = setsolve, 
             getsolve = getsolve)
}


## Write a short comment describing this function
# The cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
