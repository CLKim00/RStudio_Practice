mpg <- as.data.frame(ggplot2::mpg)
library(ggplot2)

ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()