## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m_cache <- NULL
        set <- function(y) {
                x <<- y
                m_cache <<- NULL
        }
        get <- function() x
        setcache <- function(m) m_cache <<- m
        getcache <- function() m_cache
        list(set = set, get = get,
             setcache = setcache,
             getcache = getcache)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getcache()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setmean(m)
        m
}
