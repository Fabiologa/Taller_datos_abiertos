#######Open data

#####Librerías


###Llamar directorio de trabajo

setwd("C://Ranalisis//opendata")

#help(read.csv)

bd<- read.csv("Practica_ODD19_SCiAC_errores.csv", sep= ";", header= T)
head(bd)
summary(bd)

#media, si escribo na.rm entonces no me toma en cuenta los NA
mean(bd$Ta_corporal, na.rm = T)

sd(bd$Ta_corporal, na.rm = T)

help(boxplot) #para ver los símbolos
#outline es para que no tome en cuenta datos atípicos
#notch sirve para visualizar si entre grupos de datos hay significancia o no.

boxplot(Ta_corporal ~ Zona, data = bd, notch=T, xlab= "Zona", 
ylab="Temperatura corporal (°C)", outline=FALSE)





