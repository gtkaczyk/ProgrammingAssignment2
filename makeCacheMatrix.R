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