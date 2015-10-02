#Code thanks to Matthew Sheerin <matthew.sheerin.2013@uni.strath.ac.uk>
make_rrg=function(n,r,a=1,b=1/a){
#n=number of nodes
#r=connection radius
#a=length of rectangle (defaults to unit length)
#b=height of rectangle (defaults to ensure unit area)
  a1=rep(1,n) 				#a column vector of ones
  p=cbind(runif(n,0,a),runif(n,0,b))	#generate points
  #p = p^3 #Change to make a power_law
  psum=rowSums(p^2)				#used in computing squared distance matrix
  A=tcrossprod(psum,a1)
  A=(A+t(A)-2*tcrossprod(p))<r^2	#A as boolean with TRUE on diagonal
  diag(A)=0					#A as binary matrix
  return(list(adjacency=A,points=p))					#return adjacency matrix
}

exampleRRG <- function(){
  rrg=make_rrg(500,0.08,1)
  A=rrg$adjacency
  p=rrg$points
  
  #draw a graph, given a,b,A,p
  
  #pdf(file='graph.pdf')  	#uncomment to output graph as pdf
  ##pdf(file='graph.pdf',height=7,width=14)	#pdf with dimensions given
  par(mar=c(2,2,.1,.1),mgp=c(0,1,0))
  plot(p[,1],p[,2],xlim=c(0,a),ylim=c(0,b),xlab='a',ylab='b',pch=1,axes=F,new=F)
  axis(side = 1, at = c(0,a),pos=0)
  axis(side = 2, at = c(0,b),pos=0)
  axis(side = 3, at=c(0,a),labels=c('',''),col.ticks=0,pos=b)
  axis(side = 4, at=c(0,b),labels=c('',''),col.ticks=0,pos=a)
  
  for (i in 1:(n-1)){
    for (j in 2:n){
      if (A[i,j]==1){
        lines(c(p[i,1],p[j,1]),c(p[i,2],p[j,2]))
      }
    }
  }
  #dev.off()				#uncomment when making pdf
}


