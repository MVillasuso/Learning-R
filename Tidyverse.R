# WEEK 11 - day 3 Tidyverse

# Elige un built_in dataset de R y realizar un análisis de este.
# Requisitos mínimos


library(tidyverse)

# Dataset seleccionado Diamonds
data("diamonds")
diamonds
head(diamonds)

# (1) Aplicar los 6 verbos de dplyr
# Filter
filter(diamonds, cut == 'Premium') #Muestra solo los elementos de corte = "Premium"
# Arrange
arrange(diamonds, desc(price))  #Ordenar los elementos por precio (descendente)
# Summarise
summarise(diamonds,n())   # Cantidad de elementos del dataset
# Group By
group_by(diamonds,cut)  # Muestra que son 5 grupos pero no les aplica ninguna operacion
# Mutate
mutate(diamonds, price/carat) # Agrega columna con price / carat
# Select
select (diamonds, cut,color,clarity)  # Seleccionar solo ciertas columnas

# (2) Hacer un pipeline de verbos usando %>% con al menos 3 de ellos

#Diamantes de corte Ideal con precio mayor a 10.000, 
#Cuantos hay, Cual es su media de "depth", Cuanto vale el más barato y el más caro 
#de cada grupo (agrupados por color y claridad)

diamonds %>% # el pipe se pone usando Command+Shift+M
  filter(cut == 'Ideal',
         price >=10000) %>% 
  group_by (color,clarity) %>% 
  summarise(cant = n(), mean(depth), min(price), max(price))

# (3) Hacer un pipeline de verbos usando al menos un verbo y una funcion 
# de ggplot

# Precio medio por tipo de corte del diamante
diamonds %>%
  group_by(cut) %>% 
  summarise(meanprice = mean(price)) %>% 
  ggplot(aes(x = cut, y = meanprice)) +
  geom_point() 

# (4) Hacer al menos 3 gráficas con ggplot

#BOXPLOT
diamonds %>% 
  filter(cut == "Premium") %>% 
  ggplot(aes(x = clarity, y = price)) +
  geom_boxplot() +
  ggtitle("Comparacion de Precio por Claridad (Diamantes Premium)")

# HISTOGRAMA
diamonds %>% 
  filter(cut == "Premium") %>% 
  ggplot(aes( y = price)) + 
  geom_histogram(stat="bin", bins=10)+
  ggtitle("Histograma de Precios (Diamantes Premium)")


# PUNTOS
diamonds %>%
  filter(price>1000) %>%
  group_by (color,cut, clarity) %>% 
  summarise( meanprice = mean(price)) %>% 
  # Make the plot
  ggplot(aes(x = color, y = meanprice, color = clarity)) +
  geom_point() +
  facet_wrap( ~ cut)+
  ggtitle("Diamantes con precio mayor a 1000 (Corte, Color y transparencia)")

