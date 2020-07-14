## Put comments here that give an overall description of what your
## functions do

## A function that cache the inverse of a matrix

makeCacheMatrix<- function(m = matrix()) {
  i<- NULL
  set<- function(matrix){
    m<<- matrix
    i<<- NULL
  }
  get<- function(){
    m
  }
  setInverse<- function(inverse) {
    i<<- inverse
  }
  getInverse<- function() {
    i
  }
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse)

}


## A special matrix object that returns the inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m<- x$getInverse()
      if(!is.null(m)){
        message("getting cached data")
        return(m)
      }
      
      data<- x$get()
      m<- solve(data, ...) 
      x$setInverse(m)
      m
}
