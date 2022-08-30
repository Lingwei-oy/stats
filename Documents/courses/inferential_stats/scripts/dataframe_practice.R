# create a dataframe
a <- 1:5
heights <- c(67, 68, 65, 64, 64, 70, 67, 69, 76,
             66, 81, 71, 66, 72, 66, 74, 70, 75)
matrix(runif(5, min = 0, max = 100), ncol  = 3)
shoes <- c(8, 11, 9, 7, 8.5, 8, 8.5, 9, 13, 9,17, 11, 9, 10, 6.5, 12, 10.5, 13)
length(heights)
sex <- c(rep(x = 'F', times = 5), 'M', 'F', 'F', rep(x = 'F', times = 6), 'F', 'M', 'M', 'M')
length(sex)

data <- data.frame(heights, shoes, sex)
plot(data$heights, data$shoes, xlab = 'Heights', ylab = 'Shoes', xlim = c(60, 85))
xbar <- mean(data$heights)
ybar <- mean(data$shoes)
points(xbar,ybar,col = 'red')
abline(a = -24.608, b = 0.498)
lm(shoes ~ heights, data = data)

library(ggplot2)
