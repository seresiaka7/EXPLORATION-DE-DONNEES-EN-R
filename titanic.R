

library(tidyverse)

# Charger les données à l'aide de readxl
titanic_data <- read_excel("titanic.xls")

head(titanic_data)
# Résumé statistique des variables
summary(titanic_data)


# Résumé statistique des variables numériques
print("Résumé statistique des variables numériques :")
print(summary(titanic_data[, c("pclass", "survived", "age", "sibsp", "parch", "fare", "body")]))

# Résumé statistique des variables catégorielles
print("Résumé statistique des variables catégorielles :")
print(sapply(titanic_data[, c("name", "sex", "ticket", "cabin", "embarked", "boat", "home.dest")], function(x) length(unique(x))))

# Diagramme de barres pour la variable 'survived'
print("Diagramme de barres pour la variable 'survived' :")
# Visualisation : Boîte à moustaches pour chaque variable

# Diagramme de barres pour la variable 'survived'
print("Diagramme de barres pour la variable 'survived' :")
barplot(table(titanic_data$survived), main="Nombre de survivants", xlab="Survivant (0: Non, 1: Oui)", col=c("skyblue", "salmon"))

# Diagramme de dispersion entre 'age' et 'fare'
print("Diagramme de dispersion entre 'age' et 'fare' :")
plot(titanic_data$age, titanic_data$fare, main="Relation entre l'âge et le tarif", xlab="Âge", ylab="Tarif", pch=19, col=titanic_data$survived)

# Corrélation entre 'age' et 'fare'
print("Corrélation entre 'age' et 'fare' :")
cor(titanic_data$age, titanic_data$fare)

# Histogramme pour la variable 'age'
print("Histogramme pour la variable 'age' :")
hist(titanic_data$age, main="Distribution de l'âge", xlab="Âge", col="lightblue", border="black")

# Boîte à moustaches pour 'age' par 'survived'
print("Boîte à moustaches pour 'age' par 'survived' :")
boxplot(age ~ survived, data=titanic_data, main="Boîte à moustaches de l'âge par survie", xlab="Survivant (0: Non, 1: Oui)", ylab="Âge", col=c("skyblue", "salmon"))







