## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
