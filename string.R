maxofthree <- function(length){
  x<-runif(2)
  x=sort(x)
  y<-c(x[1],x[2]-x[1],1-x[2])
  return(length*max(y))
}
t1 = NULL
t2 = NULL
t3 = NULL
t4 = NULL
t5 = NULL
for (i in 1:10000){
  t1[i]=64*maxofthree(1)
  t2[i]=t1[i]*maxofthree(1)
  t3[i]=t2[i]*maxofthree(1)
  t4[i]=t3[i]*maxofthree(1)
  t5[i]=t4[i]*maxofthree(1)
}
round(sd(t5),9)
b5=round(length(t5[t10>8])/length(t5[t10>4]),10)

t1 = NULL
t2 = NULL
t3 = NULL
t4 = NULL
t5 = NULL
t6 = NULL
t7 = NULL
t8 = NULL
t9 = NULL
t10 = NULL
for (i in 1:10000){
  t1[i]=1024*maxofthree(1)
  t2[i]=t1[i]*maxofthree(1)
  t3[i]=t2[i]*maxofthree(1)
  t4[i]=t3[i]*maxofthree(1)
  t5[i]=t4[i]*maxofthree(1)
  t6[i]=t5[i]*maxofthree(1)
  t7[i]=t6[i]*maxofthree(1)
  t8[i]=t7[i]*maxofthree(1)
  t9[i]=t8[i]*maxofthree(1)
  t10[i]=t9[i]*maxofthree(1)
}
round(sd(t10),9)
b6=round(length(t10[t10>12])/length(t10[t10>6]),10)
