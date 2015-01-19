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
  ## return data 
  m
}