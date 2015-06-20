## (Programming in R) Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#gets the cached
ok <- NULL
        #create the matrix
+        set <- function(y) {
+                x <<- y
+                ok <<- NULL
+        }
        #gets the values
+        get <- function() x
        #set matrix in inverse way
+        setmatrix <- function(inverse) ok <<- inverse
        #get the inversed matrix
+        getinverse <- function() ok
        #return what was done
+        list(set=set, get=get, 
         setmatrix=setmatrix, 
         getinverse=getinverse)

}


## (Programming in R) Write a short comment describing this function

cacheSolve <- function(x, ...) {
 mtx <- x$getinverse()
+        if(!is.null(ok)) {
                 message("getting cached data")
+                return(ok)
+        }
+        data <- x$get()
+        ok <- solve(data, ...)
+        x$setinverse(ok)
+        ok

}
