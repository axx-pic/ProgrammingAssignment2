#this function first looks to see if the inverse of x already exists in the cache memory -- if so, it uses it and
#stops instead of  computing the inverse from scratch


cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
    
  }
  
  data <- x$get()
  #data<-do.call(rbind,m)
  m <- solve(data)
  
  x$setinverse(m)
  m
  
}
