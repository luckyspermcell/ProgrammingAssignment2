## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL 
  set <- function(y){. #sets the original matrix
    x <<- y
    inv <<- NULL
  }
  get <- function() x #retrieves the original matrix 
  setinv <- function(inversionmatrix) inv <- inversionmatrix #sets the inverted matrix
  getinv <- function() inv #retrieves the inverted matrix
  list(set = set, get = get, setinv = setinv, getinv = getinv) #makes a list of the functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinv() #Retrieves the inverted matrix stored in makeCachematrix
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }    #checks if the inverted matrix already exists                      
  data <- x$get()
  inv <- solve(data) #if not, it makes an inverted matrix
  inv
}
