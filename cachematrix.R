## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
The first function, makeCacheMatrix creates a special "Matrix", which is really a list containing a function to
	1	set the value of the matrix
	2	get the value of the matrix
	3	set the value of the inverse
	4	get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
	 i <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inv) i <<- inverse
        getmean <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function
cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         i <- x$getmean()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(mat,...)
        x$setinv(i)
        i

}
