setwd('C:/Users/....../Coursera-R')
rm(list=ls())

#set the value of the matrix
#get the value of the matrix
#set the value of the solve
#get the value of the solve


CacheMatrix <- function(MyMat){
  
                            # Initialize 
                            k <- NULL
  
                            #set the matrix
                            set <- function(MyMat) {
                            MyMat <<- MyMat
                            k <<- NULL
                                                    }
                            #get the matrix
                            get <- function() {MyMat} 
  
                            setInver <- function(Inver){k <<- Inver}
                            getInver <- function(){k} 
  
  
                            list(set = set, get = get,
                            setInver = setInver,
                            getInver = getInver)
                          
                            }


##

cacheSolve <- function(x, ...) {
                          MyMat <- x$getInver()
                          if(!is.null(MyMat)) {
                                               message("getting inversed matrix")
                                               return(MyMat)
                                              }
                          data <- x$get()
                          MyMat <- Inver(data, ...)
                          x$setInver(MyMat)
                          MyMat
                                  }

#I simply created a matric by using "matrix"  in order to cache its inverse
MyMat = matrix(sample(1:1000,25),5,5)

CacheMatrix(MyMat)