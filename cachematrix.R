##solamente creamos la función Matríz y construimos su inversa partiendo de asgnar la funcion y 
  makeCacheMatrix <- function( matiz = matrix() ) {   
  i <- NULL
  set <- function( matrix ) {
   matriz <<- matrix
    i <<- NULL
  }
## Para obtener la matriz y despues tener la inversa de la misma
   get <- function() {
    	matriz
  }
   setInverse <- function(inverse) {
       i <<- inverse
  }
          getInverse <- function() {
    i
 }
             
## Regresar las listas
    list(set = set, get = get,
    setInverse = setInverse,
    getInverse = getInverse)
   }
  
# De lo anterior calculamos la inversa de la matr´z si no se modificó recupera la inversa
    cacheSolve <- function(x, ...) {

   matriz <- x$getInverse()
   if( !is.null(matriz) ) {
    return(matriz)
    }
   data <- x$get()

   matriz <- solve(data) %*% data
 ## Calcula la inversa de X y regresa la Matriz            
   x$setInverse(matriz)

   matriz
}
