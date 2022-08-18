midwest <- as.data.frame(ggplot2::midwest)
library(ggplot2)

head(midwest)
tail(midwest)
View(midwest)
dim(midwest)
str(midwest)
summary(midwest)

new_midwest <- midwest
new_midwest <- rename(new_midwest, total = poptotal)
new_midwest <- rename(new_midwest, asian = popasian)
head(new_midwest)

new_midwest$per_asian <- new_midwest$asian/new_midwest$total
hist(new_midwest$per_asian)

average <- mean(new_midwest$per_asian)
new_midwest$grade <- ifelse(new_midwest$per_asian >= average, "large", "small")
head(new_midwest)

table(new_midwest$grade)
qplot(new_midwest$grade)