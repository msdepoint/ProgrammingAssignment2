## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##week 3 program assignment
makeCacheMatrix <- function(x = matrix()) {
  ## use the example given from the course, but replace with solve function
  ## x needs to be a matrix
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## use the example given from the course, but replace with solve function and make sure a matrix
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
