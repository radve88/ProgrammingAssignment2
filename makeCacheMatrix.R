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

