
iris<-read.csv("./data/iris.csv")
iris_PCA <-prcomp(iris[,1:4])

biplot(iris_PCA) ### now make sure that you export this to the data folder by doing export-> ###

### Now we have to go into the Terminal to tell GitHub to 