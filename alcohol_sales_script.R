# Libraries ====

library(tidyverse)
library(fpp)
library(fpp2)
library(skimr)
library(tidymodels)

# Reading in the data sets ====
alcohol_sales = read_csv("Alcohol_Sales.csv")

# Initial Analysis ====
summary(alcohol_sales)
str(alcohol_sales)

class(alcohol_sales$DATE)

view(alcohol_sales)

# Analyzing sales distribution of the data ====

## Box Plot ====
boxplot(alcohol_sales$S4248SM144NCEN)

## Plotting density of the sales data ====
plot(density(alcohol_sales$S4248SM144NCEN))
abline(v = mean(alcohol_sales$S4248SM144NCEN), col = "red", lty = 2)
abline(v = median(alcohol_sales$S4248SM144NCEN), col = "green", lty = 2)
abline(v = mean(alcohol_sales$S4248SM144NCEN) + sd(alcohol_sales$S4248SM144NCEN), col = "blue", lty = 2)
abline(v = mean(alcohol_sales$S4248SM144NCEN) - sd(alcohol_sales$S4248SM144NCEN), col = "blue", lty = 2)

# By seeing the data we can say that the data is slightly right skewed so let us try to see the distribution with different transformations.

## Transformation Check ====
### Plotting density with taking the log of the sales data ====
plot(density(log(alcohol_sales$S4248SM144NCEN)))
abline(v = mean(log(alcohol_sales$S4248SM144NCEN)), col = "red", lty = 2)
abline(v = mean(log(alcohol_sales$S4248SM144NCEN)) + sd(log(alcohol_sales$S4248SM144NCEN)), col = "blue", lty = 2)
abline(v = mean(log(alcohol_sales$S4248SM144NCEN)) - sd(log(alcohol_sales$S4248SM144NCEN)), col = "blue", lty = 2)
abline(v = median(log(alcohol_sales$S4248SM144NCEN)), col = "green", lty = 2)


### Plotting density with taking the square root of the sales data ====
plot(density(sqrt(alcohol_sales$S4248SM144NCEN)))
abline(v = mean(sqrt(alcohol_sales$S4248SM144NCEN)), col = "red", lty = 2)
abline(v = median(sqrt(alcohol_sales$S4248SM144NCEN)), col = "green", lty = 2)
abline(v = mean(sqrt(alcohol_sales$S4248SM144NCEN)) + sd(sqrt(alcohol_sales$S4248SM144NCEN)), col = "blue", lty = 2)
abline(v = mean(sqrt(alcohol_sales$S4248SM144NCEN)) - sd(sqrt(alcohol_sales$S4248SM144NCEN)), col = "blue", lty = 2)

# By looking at the transformations I deduce that square root transformation is better.



