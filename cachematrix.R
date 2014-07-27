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

	a <- NULL

	set <- function (matrx) {
		x <<- matrx
		a <<- NULL
	}

	get <- function() {
		x
	}

	setInverse <- function (invrse) {
		a <<- invrse
	}

	getInverse <-  function() {
		a
	}

	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


### cacheSolve() function calculates the inverse of the special vector.
### Before calculating,it checks whether the inverse is already calculated
### If YES, it gets the inverse value from Cache and skips computation
### If NO, it computes inverse value and sets the same in cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
