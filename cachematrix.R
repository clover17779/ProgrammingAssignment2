## Put comments here that give an overall description of what your
## functions do

## a short comment describing this function£º
##this function can get a special matrix which just is a list
##it can not only set and get the matrix  but also set and get the inverse matrix(wich call "ni")
##you can found their environments are same
##in fact I just do by imitation and I dont kown it is right or not
##if you know the right answer, please tell me in the comment box 
##thank you very much 
makeCacheMatrix <- function(x = matrix()) {
    ni <- NULL

    set <- function(y) {
        x <<- y
        ni <<- NULL
     }

    get <- function() x
        setni <- function(solve) ni <<- solve
        getni <- function() ni

    list (set=set,get=get,setni=setni,getni=getni) 
}


## Write a short comment describing this function
## this function may can check that wheter the matrix has been compute its inverse matrix
## if it has done it this function can return the result from cache
## else it will compute this matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    ni <- x$getni()

            if (!is.null(ni)) {
                message ("getting cached data")
                return (ni)
            }

    data <- solve(data,...)
    x$setni(ni)
    ni
}
