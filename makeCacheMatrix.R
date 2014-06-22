# The purpose of this program/exercise is to demonstrate the use of the "<<" "superassignment" operator.
#"<<" creates a global variable -- creates the variable in the parent environment that can be accessed by other functions

makeCacheMatrix<-function(x=matrix()){
  m<-NULL
  set<-function(y){
    x<<-y
    m<-NULL
  }
  get<- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
