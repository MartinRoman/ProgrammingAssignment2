## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#this function creates a cache Matrix and a Special List

makeCacheMatrix <- function(x = numeric()) {
        #holds the cached value or NULL
        #cache is set to NULL
        cacheInv <- NULL
        setMatrix <- function(y)
                x <<- y
                # a new value assigned over run previous cached value
                # cacheInv value is being assigned in the environmen in which the function 
                #  was defined
                cacheInv <<- NULL
        }
        
        # return the stored matrix
        getMatrix <- function() {
                x
        }
        
        # cache the argument
        setCacheInverse <- function(inverse){
                chacheInv <<- inverse
        }
        
        getInverse <- function(){
                cacheInv
        }
        
        
        list (setMatrix = setMatrix, getMatrix = getMatrix,
              setCacheInverse = setCacheInverse
              getInverse = getInverse)
        #retunr list with elements created, your functions
}

}

#This function calculates the inverse of a special matrix created with 
# makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # get the cached value
        inverseM <- x$getInverse()
        # if a cached value exists return it
        if(!is.null(inverseM)) {
                message("getting cached data")
                                      
        return(inverseM)
        }
        # otherwise get the matrix, caclulate the inverse and store it in
        # the cache
        data <- x$getInverse()
        inverseM <- inverse(data, ...)
        x$SetcacheInverse(inverseM)
       
        # return the inverse
        inverseM
}
