## Cache the matrix inverse
## makeCacheMatrix will cahce the vale of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cachesolve will retrive the vale of the inverse matrix from the cached vale in makeCacheMatrix 
## and will return it if matrix has not been changed

cacheSolve <- function(x, ...) { m <- x$getinverse()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
## Return a matrix that is the inverse of 'x'
}
