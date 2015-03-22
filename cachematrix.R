## Put comments here that give an overall description of what your
## functions do

# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the 
# matrix. Contains the following functions:
# * setMatrix      set the value of a matrix
# * getMatrix      get the value of a matrix
# * cacheInverse   get the cahced value (inverse of the matrix)
# * getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()){
   m<-NULL
   set<-function(y){
   x<<-y
   m<<-NULL
   }
 get<-function() x
 setmatrix<-function(solve) m<<- solve
 getmatrix<-function() m
 list(set=set, get=get,
    setmatrix=setmatrix,
    getmatrix=getmatrix)
 }




# The following function calculates the inverse of a "special" matrix created with 
# makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getmatrix()
     if(!is.null(m)){
       message("getting cached data")
       return(m)
     }
     matrix<-x$get
     m<-solve(matrix, ...)
     x$setmatrix(m)
     m
}
}
