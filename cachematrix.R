## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function creates vector of functions for x matrix
## that suport of caching the inverse of of the matrix

  makeCacheMatrix <- function(x = matrix()) {
    ## empty cache variable m
    m <- NULL
    ## define function set 
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    ## define function get 
    get <- function() x
    ## define function setsolve 
    setsolve <- function(solve) m <<- solve
    ## define function getsolve
    getsolve <- function() m
    ## return vector of functions
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
  }



## cacheSolve function returns cached inverse of matrix if cache exists
## incase the cache does not exist copute inverse using solve function
## and cache the result using x$setsolve(m)

  cacheSolve <- function(x, ...) {
    ## get cached data
    m <- x$getsolve()
    ## check if data is acctually gotten from cache
    if(!is.null(m)) {
      message("getting cached data")
      ## return data and exit
      return(m)
    }
    ## in case data is not gotten from ceche 
    data <- x$get()
    ## compute inverse using solve
    m <- solve(data, ...)
    ## cache the result for usage in next call of the function
    x$setsolve(m)
    ## Return a matrix that is the inverse of 'x'
    m
  }        

