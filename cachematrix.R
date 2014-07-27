### In this Programming Assignment we will learn about 
### caching the INVERSE value of a given vector input.
### We will learn about <<- operator as well.
### This program contains two fucntions namely
###   a. makeCacheMatrix
###   b. cacheSolve


### makeCacheMatrix() functions cache the INVERSE
###   a. Sets the value of the Vector
###   b. Gets the value of the Vector
###   c. Sets the value of the Inverse
###   d. Gets the value of the Inverse

makeCacheMatrix <- function(x = matrix()) {

	## variable initialisation for inverse property
	a <- NULL

	## operation to set the matrix
	set <- function (matrx) {
		x <<- matrx
		a <<- NULL
	}

	## operation to get the matrix
	get <- function() {
		x
	}

	## operation to set the inverse of the matrix
	setInverse <- function (invrse) {
		a <<- invrse
	}

	## operation to get the inverse of the matrix
	getInverse <-  function() {
		a
	}

	## returns list of all the operations in this function
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


### cacheSolve() function calculates the inverse of the special vector.
### Before calculating, it checks whether the inverse is already calculated
### If YES, it gets the inverse value from Cache and skips computation
### If NO, it computes inverse value and sets the same in cache.

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'

	## outputs matrix that is inverse of x matrix
	inv <- x$getInverse()

	## Verifies if the inverse exits. If Yes, returns the same
	if (!is.null(inv)) {
		return (inv)
	}

	## gets the matrix from object and stores it in data
	data <- x$get()

	## computes the inverse matrix using matrix multiplication
	inv <- solve(data) %% data
	
	## Inverse matrix is being set in the object
	x$setInverse(inv)

	## Finally returns the inverse matrix
	inv
}
