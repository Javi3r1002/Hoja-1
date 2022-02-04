#EJ 4.11
ordenar <- data.frame(movies[order(-movies$budget),])
ej11 <- data.frame(ordenar$budget, ordenar$revenue)
top100 <- data.frame(head(ej11, 100))
plot(x = top100$ordenar.revenue , y = top100$ordenar.budget,main = "Ingresos contra Presupuesto", xlab = "Ingresos", ylab = "Presupuesto")
#EJ 4.12
ordenMes <- data.frame(movies$revenue, movies$releaseDate)
ordenMes1 <- data.frame(ordenMes[order(- as.numeric(ordenMes$movies.releaseDate)),])
subsstr <- data.frame(ordenMes1$movies.revenue,substr(ordenMes1$movies.releaseDate, 6,7))
sumatoria <- aggregate(x = subsstr$ordenMes1.movies.revenue, by = list(subsstr$substr.ordenMes1.movies.releaseDate..6..7.),FUN = sum)
plot(x = sumatoria$Group.1, y = sumatoria$x, main = "Ingresos contra mes", xlab = "Mes", ylab = "Ingresos")
plot(x = subsstr$substr.ordenMes1.movies.releaseDate..6..7., y = subsstr$ordenMes1.movies.revenue, main = "Ingresos contra mes", xlab = "Mes", ylab = "Ingresos")
#EJ 4.13
install.packages("dplyr")
library(dplyr)
countrel <- count(subsstr, vars = subsstr$substr.ordenMes1.movies.releaseDate..6..7., wt_vvar = subsstr$substr.ordenMes1.movies.releaseDate..6..7.)
#EJ 4.14
exito <- data.frame(movies$voteAvg, movies$revenue)
top500 <- data.frame(head(exito, 5000))
plot(x = top500$movies.voteAvg, y = top500$movies.revenue, main="Popularidad contra Ingresos", xlab = "Popularidad", ylab = "Ingresos")
#EJ 4.15
generos <- data.frame(movies$genres, movies$runtime)
ordenGen <- data.frame(generos[order(-generos$movies.runtime),])
idk <- data.frame(head(ordenGen, 20))
xd <- table(idk$movies.genres)
barplot(xd)
