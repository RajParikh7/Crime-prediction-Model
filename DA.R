x<-read.csv(file.choose(),header=T)
#print(class(x['Date']))

#library(corrplot)
#corrplot(x, method="circle")
library(dplyr)
library(magrittr)
#print(x['Date'])



res <- aov(DateTime ~ Crime*hour*Community, data = x)
summary(res)