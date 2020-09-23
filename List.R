#1. Write a R program to create a list containing strings, numbers, vectors and a logical values.
c= c("A", "B")
n = c( 1,7)
ss="Z"
log= c( TRUE, FALSE, TRUE)
lista=list(c,n,ss,log)
lista

#8. Write a R program to merge two given lists into one list. 
lista2=list("WW", 1, FALSE)
c(lista, lista2)

#9. Write a R program to convert a given list to vector. 
unlist(lista2)

#10. Write a R program to create a list of dataframes and access each of those 
# dataframes from the list. 
a1 <- c(1, 2, 3, 4, 5)
a2 <- c(6, 7, 8, 9, 10)
aframe <-data.frame(a1, a2)
b1 <- c('x1', 'x2', 'x3')
b2 <- c('x6', 'x7', 'x8')
bframe <-data.frame(b1, b2)
lframes <-list(aframe,bframe)
lframes
lframes[[1]]
lframes[2]

#11. Write a R program to count number of objects in a given list. 
lista_3 = list("WW", 1, FALSE)
length(lista_3)

#12. Write a R program to convert a given dataframe to a list by rows. 
a1 <- c(1, 2, 3, 4, 5)
a2 <- c(6, 7, 8, 9, 10)
aframe <-data.frame(a1, a2)
lframe <- lapply(split(aframe, row.names(aframe)), unlist)
str(lframe)

#13. Write a R program to convert a given matrix to a list. 
lapply(seq_len(ncol(aframe)), function(i) aframe[,i])

#14. Write a R program to assign NULL to a given list element. 
lista2
lista2[[2]]<-NA
lista2
