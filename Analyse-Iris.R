library(datasets)
# Charger la bibliothèque dataset 
library(datasets)

# Charger l'ensemble de données iris
data(iris)

# Afficher les premières lignes de l'ensemble de données
head(iris)

# Résumé statistique des variables
summary(iris)

# Visualisation : Boîte à moustaches pour chaque variable
boxplot(iris$Sepal.Length, main="Boîte à moustaches de la Longueur du Sépale")

# Visualisation : Diagramme de dispersion pour la relation entre Sepal.Length et Sepal.Width
plot(iris$Sepal.Length, iris$Sepal.Width, main="Relation entre Longueur du Sépale et Largeur du Sépale", xlab="Longueur du Sépale", ylab="Largeur du Sépale", pch=19, col=iris$Species)
legend("topright", legend=levels(iris$Species), col=1:3, pch=19)

# Autres visualisations, analyses, etc. peuvent être effectuées en fonction des besoins spécifiques
