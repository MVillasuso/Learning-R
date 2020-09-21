# cargamos los datos
data("mtcars")
head(mtcars)

# limpio los datos
datos_limpios <- mtcars %>%
  filter(cyl == 4)

# grafico los datos
plot(x = mtcars$wt, y = mtcars$mpg)