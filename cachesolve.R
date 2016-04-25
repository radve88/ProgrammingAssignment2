
#This function checks if the matrix solution is cached 
#if it is then the cached value is returned in case 
#there is no cached value returned then matrix solution is 
#calculated and cached for use when function is called again


cachesolve <- function(x = matrix(nrow = 2,ncol= 2)) 
{
  
  
  
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setsolve(m)
  m
}

