install.packages('ggplot2')
library('ggplot2')
head(COVID_19_geographic_disbtribution_worldwide)
summary(COVID_19_geographic_disbtribution_worldwide)
install.packages('GGally')
install.packages('scales')
install.packages('memisc')
install.packages('MASS')
install.packages('car')
install.packages('reshape')
install.packages('plyr')
library('GGally')
library('scales')
library('memisc')

qplot(month , cases , data = COVID_19_geographic_disbtribution_worldwide) + scale_y_continuous(trans = log10_trans()) + ggtitle('cases (log10) by month')

covid <- ggplot() + geom_line(aes(y = month, x = cases),
                           data = COVID_19_geographic_disbtribution_worldwide)
covid

qplot(y = month , x = cases , data = COVID_19_geographic_disbtribution_worldwide)
qplot(y = month , x = deaths , data = COVID_19_geographic_disbtribution_worldwide)

head(sort(table ( COVID_19_geographic_disbtribution_worldwide$cases),dicresing = T))
head(sort(table ( COVID_19_geographic_disbtribution_worldwide$deaths),dicresing = T))

m1 <- lm(I(log(cases) ~ I(month^(1/3)) , data = COVID_19_geographic_disbtribution_worldwide)

plot(COVID_19_geographic_disbtribution_worldwide $ cases)
plot(COVID_19_geographic_disbtribution_worldwide $ cases , COVID_19_geographic_disbtribution_worldwide $ deaths)
plot(COVID_19_geographic_disbtribution_worldwide $ cases , type= "b")
         
# high density vertical lines.
plot(COVID_19_geographic_disbtribution_worldwide $ cases , type= "h")

# Horizontal bar plot
barplot(COVID_19_geographic_disbtribution_worldwide $ cases, main = 'covid Cases ratio',xlab = 'cases levels', col= 'green',horiz = TRUE)

# Vertical bar plot
barplot(COVID_19_geographic_disbtribution_worldwide $ cases, main = 'covid Cases ',xlab = 'Cases levels', col='red',horiz = FALSE)

hist(COVID_19_geographic_disbtribution_worldwide $ cases)
hist(COVID_19_geographic_disbtribution_worldwide $ deaths)
hist(COVID_19_geographic_disbtribution_worldwide $ cases, main = 'covid cases',xlab = 'cases', col='red')

#Single box plot
boxplot(COVID_19_geographic_disbtribution_worldwide $ cases)

# Multiple box plots
boxplot(COVID_19_geographic_disbtribution_worldwide[,0:4], main='Multiple Box plots')

par(mfrow=c(3,3), mar=c(2,5,2,1), las=1, bty="n")
plot(COVID_19_geographic_disbtribution_worldwide$cases)
plot(COVID_19_geographic_disbtribution_worldwide$cases, COVID_19_geographic_disbtribution_worldwide$month)
plot(COVID_19_geographic_disbtribution_worldwide$cases, type= "c")
plot(COVID_19_geographic_disbtribution_worldwide$cases, type= "s")
plot(COVID_19_geographic_disbtribution_worldwide$cases, type= "h")
barplot(COVID_19_geographic_disbtribution_worldwide$cases, main = 'covid cases',xlab = 'cases levels', col='green',horiz = TRUE)
hist(COVID_19_geographic_disbtribution_worldwide$deaths)
boxplot(COVID_19_geographic_disbtribution_worldwide$deaths)
boxplot(COVID_19_geographic_disbtribution_worldwide[,0:4], main='Multiple Box plots')
         
ggplot(data = COVID_19_geographic_disbtribution_worldwide, mapping = aes(x = deaths, y = cases)) + geom_point()

ggplot(data = COVID_19_geographic_disbtribution_worldwide, mapping = aes(x = deaths, y = cases, color = as.factor(month))) + geom_point()

p  <-  ggplot(diamonds,aes(cases, deaths, shape  =  factor(month)))

#Installing & Loading the package 
install.packages('plotly')  
library(plotly)

covid19 <- plot_ly(data = COVID_19_geographic_disbtribution_worldwide, x =~cases, y = ~deaths,color = ~cases, size = ~cases )
covid19
