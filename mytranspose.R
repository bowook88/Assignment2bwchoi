mytranspose <- function(x) {
  
  if (is.numeric(x)) {
    
    k <-as.matrix(x)
    y <- matrix(1, nrow=ncol(k), ncol = nrow(k))
    for(i in 1:nrow(k)) {
      for(j in 1:ncol(k)) {
        y[j,i] <- k[i,j]
        
        as.numeric(y)
        
      }
      
    }
    
  }
  
  else if (is.data.frame(x)){
    
    k<-as.matrix(x)
    y <- matrix(1, nrow=ncol(k), ncol = nrow(k))
    for(i in 1:nrow(k)) {
      for(j in 1:ncol(k)) {
        y[j,i] <- k[i,j]
      }
    }
    
    as.data.frame(y)
    
  }
  
  else if (is.na(x)){
    
    k<-as.matrix(x)
    y <- matrix(1, nrow=ncol(k), ncol = nrow(k))
    for(i in 1:nrow(k)) {
      for(j in 1:ncol(k)) {
        y[j,i] <- k[i,j]
      }
    }
    
    as.numeric(y)
    
  }
  
  else if (is.null(x)){
    
    k<-as.matrix(x)
    y <- matrix(1, nrow=ncol(k), ncol = nrow(k))
    for(i in 1:nrow(k)) {
      for(j in 1:ncol(k)) {
        y[j,i] <- k[i,j]
      }
    }
    
  
    
  }
  
  
  
  else {
    y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
    for(i in 1:nrow(x)) {
      for(j in 1:ncol(x)) {
        y[j,i] <- x[i,j]
      }
    }
    
  }
  
  
  return(y)
}