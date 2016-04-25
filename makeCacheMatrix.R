# This function takes in a matrix which is assumed to be inversible
# it defines functions get setsolve and getsolve to get the value of 
# matrix passed and to calculate matrix solution and assign it to cache 
# variable there is also a function getsolve to retrieve the cached value


makeCacheMatrix <- function(y = matrix(nrow = 2,ncol= 2)) 
  {
  
  m <- NULL
  set <- function(y) { 
    x <<- y
    m <<- NULL
  }
  get <- function() {y}
  setsolve <- function(mean) {m <<- solve(y)}
  getsolve <- function() {m}
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

