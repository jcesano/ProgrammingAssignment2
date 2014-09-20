## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Adding my first comment in RStudio :-)

makeCacheMatrix <- function(m = matrix()) {
  minv <- NULL
  set <- function(y) {
    m <<- y
    minv <<- NULL
  }
  get <- function() m
  setinv <- function(matrixinv) minv <<- matrixinv
  getinv <- function() minv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m_inverse <- x$getinv()
  if(!is.null(m_inverse)) {
    message("getting cached data")
    return(m_inverse)
  }
  data <- x$get()
  m_inverse <- solve(data)
  x$setinv(m_inverse)
  m_inverse
}
