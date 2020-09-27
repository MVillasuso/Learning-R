# Ejercicio Regresión Lineal con Multiples Variables 
# MONICA VILLASUSO

# install.packages("caret",  dependencies = c("Depends", "Suggests"))

# Como lo anterior no me funcionaba tuve que instalar lo siguiente por separado
#install.packages("caret")
#install.packages("lattice")
#install.packages("gower")
#install.packages("lava")

library(ggplot2) 
library(lattice)
library(caret)
library(dplyr)

# Importando los datos necesarios
library(readr)
USA_Housing <- read_csv("USA_Housing.csv")
View(USA_Housing)
head(USA_Housing)

USA_H2 <- select (USA_Housing, -Address)  # Uso la funcion de dplyr para crear otro DF sin la columna Address
USA_H2

# Setting de la semilla para generar siempre los mismos valores de entrenamiento 
set.seed(42)

#Renombro las columnas para facilitar su uso
names(USA_H2)
colnames(USA_H2) <- c("AvArIncome", "AvArHouseAge", "AvArNumRooms", "AvArNumBedrooms", "ArPop", "Price", "Address")
names(USA_H2)

#Price = variable dependiente (a predecir)
#El resto <-- variable independientes

# ploteamos la correlación entre las  variables
# Ejemplo tomado de https://rpubs.com/Joaquin_AR/226291
library(GGally)
ggpairs(USA_H2, lower = list(continuous = "smooth"),
        diag = list(continuous = "barDiag"), axisLabels = "none")

# Otro Grafico de correlación  
# (ejemplo tomado de https://rpubs.com/Cristina_Gil/Regresion_Lineal_Multiple)
require(corrplot)
corrplot(round(cor(subset(USA_H2)), digits = 3), type = "lower")


# creamos la regresión linear con R
# Price ~ .

fit <- lm(formula = Price ~ AvArIncome + AvArHouseAge + AvArNumRooms + AvArNumBedrooms + ArPop , data = USA_H2)

# ploteamos el modelo generado
# abline -> This function adds one or more straight lines through the current plot.
abline(fit)

summary(fit)

## USANDO CARET

# dividimos train/test
# indicamos cual es la variable a predecir
inTrain <- createDataPartition(y = USA_H2$Price, p = 0.9, list = FALSE)

training <- USA_H2[inTrain,]
test <- USA_H2[-inTrain,]

dim(training)
dim(test)


# entrenamos el modelo
fit_train <- train(Price ~ ., data= training, method = 'lm', metric="RMSE")
fit_train$finalModel


pred_H2train <- predict(fit_train, newdata = training)


# calculamos el error RMSE de TRAIN
cal_rmse <- RMSE(pred_H2train, training$Price)


pred_H2test <- predict(fit_train, newdata=test)

# evaluamos con test 
comparing <- data.frame(pred = pred_H2test, real = test$Price)

# calculamos error de TEST
postResample(pred_H2test, test$Price)

summary(fit_train)
