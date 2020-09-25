#####################
# Ejercicio funcion #
#####################

# Una vez lo termines, subelo a tu github desde R y mandanos el link

### EJERCICIO 

# Crea una funcion llamada mi_cancion que genere la letra de la pegadiza cancion del enlace:
# https://www.letras.com/pinkfong/baby-shark/

mi_cancion <- function(){
cadena <-'doo doo doo doo doo doo'
opc <- c("Baby shark", "Mommy shark", "Daddy shark","Grandma shark", "Grandpa shark", "Let’s go hunt", "Run away", "Safe at last", "It’s the end")
tam<- length(opc)

for(i in 1:tam) {
  for (j in 1:3){
    cat (c(opc[i], ",", cadena, "\n")) 
  }
  cat(opc[i],"!", "\n")
}
}

mi_cancion()


# Encontraras respuesta a algunas de tus preguntas: 
# https://www.gastonsanchez.com/r4strings/formatting.html






### BONUS
# Crea una funcion llamada otra_cancion que genere la letra de esta otra cancion:
# https://es.wikipedia.org/wiki/99_Bottles_of_Beer
 

