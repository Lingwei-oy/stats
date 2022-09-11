# read csv
data <- read.csv('heightShoes.csv', stringsAsFactors = F, header = T, check.names = F)
str(data)
nrow(data)

# calculate mean of each column
apply(data[, 1:2], MARGIN  = 2, FUN = mean)

# make a histogram
hist(data$heights, xlab = 'heights', ylab = 'freq', main = 'Histogram of Height')
hist(data$shoes, xlab = 'shoes', ylab = 'freq', main = 'Histogram of shoes')
apply(data[, 1:2], MARGIN = 2, FUN = hist)

# make a plot to show the relationship between shoes and heights
# why is th default not sensible?
plot(data$heights, data$shoes, xlab = 'heights', ylab = 'shoes', 
    xlim = c(60, 85), ylim = c(5,18),
     main = 'Relationship between Shoes and Heights')
points(mean(data$heights), mean(data$shoes), col = 'green')
model <- lm(shoes ~ heights, data = data)

abline(a = model$coefficients[1], b = model$coefficients[2])
data$e1 <- model$residuals

# sum of error 
sum((data$e1)**2)
        
# test a second model
data$e2 <- -22 + 0.47*data$heights-data$shoes
sum((data$e2)**2)
plot(data$heights, data$e2)
abline(h = 0)
