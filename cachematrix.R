## Includes two functions makecachematrix and solvecachematrix


## makecachematrix uses two functions set,get,setinverse,getinverse

makecachematrix<- function(x=matrix){

        inv<-NULL #initializing inverse as NULL

        set<-function(y){

                x<<-y

               inv<<-NULL

        }

        get<-function(). #function to get matrix

        setInverse<-function(inverse) {inv<<-inverse}

        getInverse<-function() {inv} #function to obtain inverse of matrix

        list(set=set,get=get,setInverse=setInverse, getInverse=getInverse)

}



## cachesolve function is used to access cached data

cacheSolve<-function(x,...){       #gets cached data

            inv<-x$getInverse()

            if(!is.null(inv)){     #checks whether inverse is NULL

            message("getting cached data")

            return(inv)            #returns inverse value

           }

           mat<-x$get()

           inv<-solve(mat,...)     #calculates inverse value

           x$setInverse(inv)

           inv

}
