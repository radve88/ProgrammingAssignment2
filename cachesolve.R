cachesolve <- function(x = matrix(nrow = 2,ncol= 2)) 
{
  
  
  
  m <- x$getsolve
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get
  m <- solve(data)
  x$setsolve(m)
  m
}

