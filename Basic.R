#3. Write a R program to create a sequence of numbers from 20 to 50 and 
#find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91. 
l1 <-seq(20,50)
mean(l1)

s <-sum(seq(51,91))
s

#4. Write a R program to create a vector which contains 10 random integer values 
# between -50 and +50. 
vec1<-sample(-50:50,10)
vec1

#7. Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, 
#print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both. 

k <- seq(1:100)
for (elem in k) {
  if ((elem %% 3 == 0) & (elem %% 5==0 ))
    {print ("FizzBuzz")}
  else if (elem %% 3==0 )
    {print ("Fizz")}
  else if (elem %% 5==0)
    {print ("Buzz")}
  else
    {print (elem)}
}

#9. Write a R program to find the factors of a given number. 
factores = function(n) 
{ 
  for (elem in seq(1:n)) {
    if (n %% elem == 0) {print(elem)}
  }
}

factores(10)
#10. Write a R program to find the maximum and the minimum value of a given vector.
vec2<-sample(-10:10,10)
print(vec2)
print (c("Máximo = ", max(vec2), "Mínimo = ", min(vec2)))

#13. Write a R program to create a list of random numbers in normal distribution and 
#count occurrences of each value. 
num <- as.integer(rnorm(100))
length(num)
table(num)
#15. Write a R program to create three vectors numeric data, character data and logical data. 
#Display the content of the vectors and their type. 
universo <- c("a","b","c","d","e","f","g")
vn <- sample(-10:10, length(universo), replace=T)
vc <- sample(universo, length(universo), replace=T)
vl <- as.logical(sample(0:1, length(universo), replace=T))
vn
print(c("vn", typeof(vn)))
vc
print(c("vc", typeof(vc)))
vl
print(c("vl", typeof(vl)))

#22. Write a R program to create  bell curve of a random normal distribution. 
num <-as.integer(rnorm(100))
numt <-table(num)
barplot(numt)
d <- hist(numt, freq=FALSE)
plot(d)

d <- density(num)
plot(d, main="Kernel Density")


#25. Write a R program to create a Dataframes which contain details of 5 employees 
# and display the details.
emp <- data.frame( Id = c(seq(1:4)), Nombre = c("Juan", "Pedro", "Laura", "Ines"),
                  Edad = c(25,28,30,18))

emp
#26. Write a R program to create a Data Frames which contain details of 5 employees and 
#display summary of the data.
emp2 <- data.frame( Id = c(seq(1000,1003)), Nombre = c("Juan", "Pedro", "Laura", "Ines"),
                   Edad = c(25,28,30,18), ALtura = c(1.80,1.87,1.5,1.73))

summary(emp2)
