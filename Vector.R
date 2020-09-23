#3. Write a R program to append value to a given empty vector. 
n <- vector("numeric",0)  # Vector numérico
n
n <- c(1,2,3)
n
c <- vector("character",0)  # Vector de caracteres / strings
c
c <-c("c1","c2", "c3")
c
length(c)

#6. Write a R program to find Sum, Mean and Product of a Vector. 
n <- vector("numeric",10)  # Vector numérico
n
n <- c(1,2,3,8,11,10,20,23,25,27)
sum(n)
mean(n)
prod(n)

# 7. Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN.
n2 <- vector("numeric",12)  # Vector numérico
n2
n2 <- c(1,2,3,8,11,NA,10,20,23,25, NaN,27)
sum(n2, na.rm=TRUE)
mean(n2, na.rm=TRUE)
prod(n2, na.rm=TRUE)

# 8. Write a R program to find the minimum and the maximum of a Vector. 
min(n2,na.rm=TRUE)
max(n2,na.rm=TRUE)

#9. Write a R program to sort a Vector in ascending and descending order. 
sort(n2, na.last=TRUE)
sort(n2, na.last=TRUE, decreasing=TRUE)

# 10. Write a R program to test whether a given vector contains a specified element.
n2
{
if (is.element(33,n2)) 
   print("existe") 
else 
   print("no existe")
}
#12. Write a R program to access the last value in a given vector. 
tail(n2,1)
# 13. Write a R program to find second highest value in a given vector. 
tam = length(n2)
sort(n2,na.last=FALSE)[tam-1]
#14. Write a R program to find nth highest value in a given vector. 
nth = 4
tam = length(n2)
sort(n2,na.last=FALSE)[tam-nth-1]
#16. Write a R program to convert given dataframe column(s) to a vector. 
a1 = c(1, 2, 3, 4, 5)
a2 = c(6, 7, 8, 9, 10)
aframe = data.frame(a1, a2)
#Diferentes formas de hacerlo
avector <- as.vector(aframe['a2'])
avector2 <- aframe[['a2']]
avector3 <- aframe[,2]
avector
avector2
avector3


#20. Write a R program to reverse the order of given vector. 
rev(avector2)
#21. Write a R program to concatenate a vector.
c(avector2,avector3)
#22. Write a R program to count number of  values in a range in a given vector.
n2
l1=2
l2=10
sum((n2>=l1) &(n2 <=l2),na.rm=TRUE)
#23. Write a R program to convert two columns of a data frame to a named vector. 
va<-c(1000, 200, 500)
va
names(va) <- c("Uno", "Dos", "Tres")
va

a1 = c(1, 2, 3, 4, 5)
a2 = c(6, 7, 8, 9, 10)
aframe = data.frame(a1, a2)
names(aframe)<-c("Col1", "Col2")
aframe