## Put comments here that give an overall description of what your
## functions do

## Function return martrix. It has methods for getting and setting value for cache for environment outside the function

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


## Function returns cached value if it has cache at environment and solved value if it has not cache (and set cache at environment)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getcache()
        if(!is.null(m)) {
                message("getting cached data")
                return(m) ## Return cache
        }
        data <- x$get()
        m <- solve(data) ## Solve invserse
        x$setcache(m)  ## set value to cache
        m
}
