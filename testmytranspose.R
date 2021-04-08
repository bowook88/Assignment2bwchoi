source('mytranspose.R')
myvar1 <-  matrix(1:10, nrow=5, ncol=2)
mytranspose(myvar1)
################test1
myvar1test_1 <-mytranspose(myvar1)
  if (myvar1[1,2] == myvar1test_1[2,1]) print("true_1")
  if (myvar1[3,1] == myvar1test_1[1,3]) print("true_2")
  if (myvar1[5,2] == myvar1test_1[2,5]) print("true_3")
################test2

myvar1 <-  matrix(NA, nrow=0, ncol=0)
try(mytranspose(myvar1), silent=T)##오류무시



################test3
myvar1 <-  matrix(c(1,2), nrow=1, ncol=2)
mytranspose(myvar1)
myvar1test_3 <-mytranspose(myvar1)
if (myvar1[1,2] == myvar1test_3[2,1]) print("true_4")

################test4
myvar1 <-  matrix(c(1,2), nrow=2, ncol=1)
mytranspose(myvar1)
myvar1test_4 <-mytranspose(myvar1)
if (myvar1[2,1] == myvar1test_4[1,2]) print("true_5")

################test5
myvar2 <- c(1,2,NA,3)
mytranspose(myvar2)
matrixchange <- as.matrix(myvar2)
myvar1test_5 <-mytranspose(myvar2)

if (matrixchange[2,1] == myvar1test_5[1,2]) print("true_6")


################test6
myvar2 <- c(NA)
mytranspose(myvar2)
matrixchange <- as.matrix(myvar2)
myvar1test_6 <-mytranspose(myvar2)

if (is.na(matrixchange)) print("true_7")

################test7
myvar2 <- c()
try(mytranspose(myvar2), silent=T) ##오류무시


################test8

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)
mydata3test <-mytranspose(mydata3)
if (mydata3[1,2] == mydata3test[2,1]) print("true_9")
if (mydata3[3,1] == mydata3test[1,3]) print("true_10")
if (mydata3[2,3] == mydata3test[3,2]) print("true_11")



