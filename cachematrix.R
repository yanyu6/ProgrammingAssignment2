## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv  <- NULL
  ## initialize the inverse matrix
  
  set <- function (y){
    x <<- y
    inv <<- NULL
  }
  ## set function -- if new matrix, then set to NULL
  
  get <- function() x
  ## get function -- get the matrix 
  setinverse <- function (inversematrix) inv <<- inversematrix
  ## setinverse function for the inverse matrix, no calculation
  getinverse <- function() inv
  ## getinverse function for get the inverse matrix
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  ## make it a function group
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

  inv <- x$getinverse()
  ## use getinverse function
  
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  ## check whether the inverse matrix is avaiable or not
  data <- x$get()
  ## get the new matrix
  inv <- solve(data)
  ## calculate the new inverse matrix
  x$setinverse(inv)
  ## set the new inverse matrix
  inv
  ## print the new inverse matrix
  
}
